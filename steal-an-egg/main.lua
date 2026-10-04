--[[
    ====================================================================
    3KG TrackStat - Steal An Egg Full Account Stats Tracker
    Game: Steal An Egg (PlaceId: 107778070777162)
    Architecture: Orca Hub & 3KG TrackStat System
    ====================================================================
]]

pcall(function()
    if not game:IsLoaded() then
        repeat task.wait(0.5) until game:IsLoaded()
    end
end)

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")

local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
    local startT = tick()
    while not Players.LocalPlayer and (tick() - startT < 10) do
        task.wait(0.5)
    end
    LocalPlayer = Players.LocalPlayer
end

-- 1. Extract User Key & Configuration
local hasGenvConfig = type(getgenv) == "function" and type(getgenv().Config) == "table" and getgenv().Config
local hasGlobalConfig = type(_G.Config) == "table" and _G.Config
local cfg = hasGenvConfig or hasGlobalConfig or {}

local userKey = cfg.USER_KEY or cfg.API_KEY or cfg.Key or (type(getgenv) == "function" and (getgenv().TRACKSTAT_KEY or getgenv().USER_KEY)) or _G.TRACKSTAT_KEY or _G.USER_KEY or ""

-- Fallback to local file if available
if (not userKey or userKey == "" or userKey == "default") and type(readfile) == "function" then
    pcall(function()
        if isfile and isfile("trackstat_key.txt") then
            userKey = readfile("trackstat_key.txt"):gsub("%s+", "")
        end
    end)
end

if not userKey or userKey == "" or userKey == "123456789" or userKey == "default" then
    print("[TrackStat Steal An Egg ERROR] User Key is missing or invalid!")
    if LocalPlayer then
        LocalPlayer:Kick("\n\n[TRACKSTAT STEAL AN EGG ERROR]\n⚠️ Bạn chưa nhập User Key cá nhân!\nVui lòng copy mã đi kèm Key của bạn từ Web Dashboard.\n")
    end
    return
end

local SERVER_URL = cfg.SERVER_URL or "https://trackstat.bakihub.site/sae/api"
-- Strip trailing slash if present
if SERVER_URL:sub(-1) == "/" then
    SERVER_URL = SERVER_URL:sub(1, -2)
end

local PC_NAME = cfg.PC_NAME or (type(getgenv) == "function" and getgenv().PC_NAME) or _G.PC_NAME or "PC-01"
local SYNC_INTERVAL = math.clamp(tonumber(cfg.SYNC_INTERVAL) or 15, 10, 60)

print(string.format("[TrackStat Steal An Egg] Khởi tạo... PC: %s | Server: %s", PC_NAME, SERVER_URL))

-- 2. Safe HTTP Request Helper
local function safeHttpRequest(options)
    local req = (type(syn) == "table" and type(syn.request) == "function" and syn.request)
             or (type(http) == "table" and type(http.request) == "function" and http.request)
             or (type(http_request) == "function" and http_request)
             or (type(request) == "function" and request)
             or (type(fluxus) == "table" and type(fluxus.request) == "function" and fluxus.request)
             or (type(krnl) == "table" and type(krnl.request) == "function" and krnl.request)

    if req then
        local ok, res = pcall(function() return req(options) end)
        if ok and res then return ok, res end
    end

    if options.Method == "POST" and game.HttpPost then
        local ok, bodyRes = pcall(function()
            return game:HttpPost(options.Url, options.Body or "", "application/json")
        end)
        if ok then return true, { StatusCode = 200, Body = bodyRes } end
    elseif game.HttpGet then
        local ok, bodyRes = pcall(function() return game:HttpGet(options.Url) end)
        if ok then return true, { StatusCode = 200, Body = bodyRes } end
    end

    return false, nil
end

-- 3. Verify Key with Server
local function verifyKeyWithServer()
    local payload = HttpService:JSONEncode({
        key = userKey,
        ts = os.time(),
        user_id = LocalPlayer and LocalPlayer.UserId or 0,
        place_id = game.PlaceId,
        job_id = (game.JobId ~= "" and game.JobId) or "00000000-0000-0000-0000-000000000000",
        executor = (type(identifyexecutor) == "function" and identifyexecutor()) or (type(getexecutorname) == "function" and getexecutorname()) or "unknown"
    })

    local success, response = safeHttpRequest({
        Url = SERVER_URL .. "/verify-key",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json",
            ["X-User-Key"] = userKey,
            ["Authorization"] = "Bearer " .. tostring(userKey)
        },
        Body = payload
    })

    if success and response and response.Body then
        local ok, data = pcall(function() return HttpService:JSONDecode(response.Body) end)
        if ok and data then
            if data.valid == false then
                if LocalPlayer then
                    LocalPlayer:Kick("\n\n[TRACKSTAT STEAL AN EGG ERROR]\n❌ User Key '" .. tostring(userKey) .. "' KHÔNG HỢP LỆ hoặc đã hết hạn!\nVui lòng lấy Key chuẩn từ Web Dashboard.\n")
                end
                return false
            end
        end
    end
    return true
end

if not verifyKeyWithServer() then
    return
end

-- ==================================================
-- SLEEK BOTTOM-RIGHT NOTIFICATION GUI (3KG TRACKSTAT)
-- ==================================================
local TweenService = game:GetService("TweenService")
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui", 10) or LocalPlayer:FindFirstChildOfClass("PlayerGui")

local function getSafeGuiParent()
    if cfg and (cfg.NO_UI == true or cfg.HIDE_UI == true) then
        return nil
    end

    if type(gethui) == "function" then
        local ok, hui = pcall(gethui)
        if ok and hui then return hui end
    end

    local pGui = LocalPlayer and (LocalPlayer:FindFirstChildOfClass("PlayerGui") or LocalPlayer:WaitForChild("PlayerGui", 5))
    return pGui
end

local subTextLabel, statusDot, toastButton, isExpanded, firstConnectDone = nil, nil, nil, false, false

local function getTrackstatLogo()
    local customAssetFn = (type(getcustomasset) == "function" and getcustomasset)
                       or (type(getsynasset) == "function" and getsynasset)

    if customAssetFn and type(writefile) == "function" then
        local fileName = "3kg_trackstat_logo.png"
        local fileExists = false
        pcall(function()
            if type(isfile) == "function" then
                fileExists = isfile(fileName)
            elseif type(readfile) == "function" then
                fileExists = (readfile(fileName) ~= nil)
            end
        end)

        if not fileExists then
            pcall(function()
                local img = game:HttpGet("https://raw.githubusercontent.com/babadz207/trackstat/main/blox-fruits/logo.png")
                if not img or #img < 100 then
                    img = game:HttpGet("https://trackstat.bakihub.site/images/logo.png")
                end
                if img and #img > 100 then
                    writefile(fileName, img)
                    fileExists = true
                end
            end)
        end

        if fileExists then
            local ok, asset = pcall(function() return customAssetFn(fileName) end)
            if ok and asset then
                return asset
            end
        end
    end
    return nil
end

local function collapseToast()
    pcall(function()
        if not toastButton or not toastButton.Parent then return end
        isExpanded = false
        TweenService:Create(toastButton, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 36, 0, 36)
        }):Play()
        if subTextLabel and subTextLabel.Parent then
            TweenService:Create(subTextLabel, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                TextTransparency = 1
            }):Play()
        end
    end)
end

local function expandToast(autoCollapseSeconds)
    pcall(function()
        if not toastButton or not toastButton.Parent then return end
        isExpanded = true
        TweenService:Create(toastButton, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 180, 0, 36)
        }):Play()
        if subTextLabel and subTextLabel.Parent then
            TweenService:Create(subTextLabel, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                TextTransparency = 0
            }):Play()
        end
        if autoCollapseSeconds and autoCollapseSeconds > 0 then
            task.delay(autoCollapseSeconds, function()
                if isExpanded then
                    collapseToast()
                end
            end)
        end
    end)
end

local function createNotificationGui()
    local guiName = "3KGTrackStatNotificationGui"
    
    local parentTarget = getSafeGuiParent()
    if not parentTarget then return end

    pcall(function()
        local existing = parentTarget:FindFirstChild(guiName)
        if existing then existing:Destroy() end
    end)

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = guiName
    screenGui.ResetOnSpawn = false
    screenGui.DisplayOrder = 999999
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    -- Compact Mini Badge (Roblox Translucent Frosted Glass Style)
    local btn = Instance.new("TextButton")
    btn.Name = "TrackStatBadge"
    btn.AnchorPoint = Vector2.new(1, 1)
    btn.Position = UDim2.new(1, -12, 1, -12)
    btn.Size = UDim2.new(0, 36, 0, 36)
    btn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    btn.BackgroundTransparency = 0.55
    btn.BorderSizePixel = 0
    btn.Text = ""
    btn.AutoButtonColor = false
    btn.ClipsDescendants = true
    btn.ZIndex = 999999
    btn.Parent = screenGui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = btn

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(255, 255, 255)
    stroke.Thickness = 1
    stroke.Transparency = 0.85
    stroke.Parent = btn

    -- TrackStat Official Logo Image (3KG TRACKSTAT blue sky 3D logo)
    local logoImg = Instance.new("ImageLabel")
    logoImg.Name = "TrackStatLogo"
    logoImg.Size = UDim2.new(0, 28, 0, 28)
    logoImg.Position = UDim2.new(0, 4, 0, 4)
    logoImg.BackgroundTransparency = 1
    logoImg.BorderSizePixel = 0
    logoImg.ScaleType = Enum.ScaleType.Fit
    logoImg.ZIndex = 1000000
    logoImg.Parent = btn

    local logoCorner = Instance.new("UICorner")
    logoCorner.CornerRadius = UDim.new(0, 6)
    logoCorner.Parent = logoImg

    -- Fallback Lightning Text Label (shown while loading or if executor doesn't support getcustomasset)
    local fallbackLabel = Instance.new("TextLabel")
    fallbackLabel.Name = "FallbackIcon"
    fallbackLabel.Size = UDim2.new(0, 36, 1, 0)
    fallbackLabel.Position = UDim2.new(0, 0, 0, 0)
    fallbackLabel.BackgroundTransparency = 1
    fallbackLabel.Font = Enum.Font.GothamBold
    fallbackLabel.Text = "⚡"
    fallbackLabel.TextColor3 = Color3.fromRGB(250, 204, 21)
    fallbackLabel.TextSize = 16
    fallbackLabel.ZIndex = 999999
    fallbackLabel.Parent = btn

    task.spawn(function()
        local assetId = getTrackstatLogo()
        if assetId and logoImg and logoImg.Parent then
            pcall(function()
                logoImg.Image = assetId
                fallbackLabel.Visible = false
            end)
        end
    end)

    -- Pulsing Status Dot (Top-right corner of badge)
    local dot = Instance.new("Frame")
    dot.Name = "StatusDot"
    dot.Size = UDim2.new(0, 6, 0, 6)
    dot.Position = UDim2.new(0, 26, 0, 3)
    dot.BackgroundColor3 = Color3.fromRGB(34, 197, 94)
    dot.BorderSizePixel = 0
    dot.ZIndex = 1000001
    dot.Parent = btn

    local dotCorner = Instance.new("UICorner")
    dotCorner.CornerRadius = UDim.new(1, 0)
    dotCorner.Parent = dot

    -- Expandable Subtitle Text (Slides out on tap / connect)
    local subLabel = Instance.new("TextLabel")
    subLabel.Name = "SubTitle"
    subLabel.Size = UDim2.new(1, -40, 1, 0)
    subLabel.Position = UDim2.new(0, 36, 0, 0)
    subLabel.BackgroundTransparency = 1
    subLabel.Font = Enum.Font.GothamMedium
    subLabel.Text = "CONNECTED [" .. tostring(PC_NAME) .. "]"
    subLabel.TextColor3 = Color3.fromRGB(244, 244, 245)
    subLabel.TextSize = 10
    subLabel.TextXAlignment = Enum.TextXAlignment.Left
    subLabel.TextTruncate = Enum.TextTruncate.AtEnd
    subLabel.TextTransparency = 1
    subLabel.ZIndex = 1000000
    subLabel.Parent = btn

    -- Interactive Drag & Click
    local isDragging = false
    local dragStartPos = nil
    local startPos = nil
    local dragMoved = false

    btn.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            isDragging = true
            dragMoved = false
            dragStartPos = input.Position
            startPos = btn.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    isDragging = false
                end
            end)
        end
    end)

    btn.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            if isDragging and dragStartPos and startPos then
                local delta = input.Position - dragStartPos
                if math.abs(delta.X) > 4 or math.abs(delta.Y) > 4 then
                    dragMoved = true
                end
                btn.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            end
        end
    end)

    btn.MouseButton1Click:Connect(function()
        if not dragMoved then
            if isExpanded then
                collapseToast()
            else
                expandToast(3.5)
            end
        end
    end)

    pcall(function()
        screenGui.Parent = parentTarget
    end)

    toastButton = btn
    subTextLabel = subLabel
    statusDot = dot
end

pcall(createNotificationGui)

local function updateToastStatus(text, isError)
    pcall(function()
        if subTextLabel and subTextLabel.Parent then
            subTextLabel.Text = text
            if isError then
                subTextLabel.TextColor3 = Color3.fromRGB(248, 113, 113)
                if statusDot and statusDot.Parent then statusDot.BackgroundColor3 = Color3.fromRGB(239, 68, 68) end
                expandToast(3)
            else
                subTextLabel.TextColor3 = Color3.fromRGB(244, 244, 245)
                local isConnected = string.find(tostring(text):upper(), "CONNECTED") ~= nil
                if isConnected then
                    if statusDot and statusDot.Parent then statusDot.BackgroundColor3 = Color3.fromRGB(34, 197, 94) end
                    if not firstConnectDone then
                        firstConnectDone = true
                        expandToast(2.5)
                    end
                else
                    if statusDot and statusDot.Parent then statusDot.BackgroundColor3 = Color3.fromRGB(234, 179, 8) end
                end
            end
        end
    end)
end

updateToastStatus("CONNECTED [" .. tostring(PC_NAME) .. "]", false)

-- 4. Load Game Shared Modules
local SaveMod, EggRecords, AssetsData, MutationsMod
pcall(function()
    SaveMod = require(ReplicatedStorage.Shared.Save)
    EggRecords = require(ReplicatedStorage.Shared.Util.EggRecords)
    AssetsData = require(ReplicatedStorage.Data.Assets)
    pcall(function()
        MutationsMod = require(ReplicatedStorage.Shared.Modules.Mutations)
    end)
end)

local function FormatTime(seconds)
    if not seconds or seconds <= 0 then return "00:00:00" end
    local h = math.floor(seconds / 3600)
    local m = math.floor((seconds % 3600) / 60)
    local s = math.floor(seconds % 60)
    return string.format("%02d:%02d:%02d", h, m, s)
end

local function GetMutationMultiplier(mutations)
    if not mutations or #mutations == 0 then return 1 end
    if MutationsMod and type(MutationsMod.EarningsFor) == "function" then
        local ok, mult = pcall(function()
            return MutationsMod.EarningsFor(mutations, 1)
        end)
        if ok and type(mult) == "number" then return mult end
    end
    local mult = 1
    for _, mut in ipairs(mutations) do
        if mut == "Silver" then mult = mult * 1.2
        elseif mut == "Golden" then mult = mult * 2.5
        elseif mut == "Rainbow" then mult = mult * 3.5
        end
    end
    return mult
end

-- 5. Main Stats Collector Function
local function CollectStealAnEggStats()
    if not SaveMod then
        pcall(function()
            SaveMod = require(ReplicatedStorage.Shared.Save)
            EggRecords = require(ReplicatedStorage.Shared.Util.EggRecords)
            AssetsData = require(ReplicatedStorage.Data.Assets)
        end)
    end

    if SaveMod and not SaveMod.IsLoaded() then
        pcall(function() SaveMod.Await() end)
    end

    local save = (SaveMod and SaveMod.Peek and SaveMod.Peek()) or {}
    local now = workspace:GetServerTimeNow()

    -- Leaderstats
    local ls = LocalPlayer:FindFirstChild("leaderstats")
    local speed = (ls and ls:FindFirstChild("Speed") and ls.Speed.Value) or (save.SpeedPower or 0)
    local moneyPerSec = (ls and ls:FindFirstChild("Money/s") and ls["Money/s"].Value) or 0
    local totalMoney = save.Money or 0

    -- Upgrades & Currencies
    local baseUpgradeLevel = save.BaseUpgradeLevel or 0
    local treadmillLevel = save.TreadmillUpgradeLevel or 0
    local bossTokens = save.BossTokens or 0
    local sakuraCrystals = save.SakuraCrystals or 0

    -- Equipped Pets Lookup
    local equippedLookup = {}
    if save.EquippedAssets then
        for _, uid in ipairs(save.EquippedAssets) do
            equippedLookup[uid] = true
        end
    end

    -- Inventory & Equipped Pets
    local inventory = save.Inventory or {}
    local equippedPets = {}
    local allPets = {}

    for uid, pet in pairs(inventory) do
        local meta = (AssetsData and AssetsData.Directory and AssetsData.Directory[pet.Category]) or {}
        local baseRate = meta.EarningRate or 0
        local mutList = pet.Mutations or {}
        local mult = GetMutationMultiplier(mutList)
        local finalRate = math.floor(baseRate * mult)

        local petInfo = {
            uid = uid,
            name = meta.DisplayName or pet.Category or "Unknown Pet",
            category = pet.Category or "General",
            rarity = (meta.Rarity and meta.Rarity.DisplayName) or "Common",
            baseEarningRate = baseRate,
            earningRate = finalRate,
            mutationMultiplier = mult,
            mutations = mutList,
            scale = pet.Scale or 1,
            personality = pet.Personality or "Normal",
            inFuse = pet.InFuse or false,
            isEquipped = (equippedLookup[uid] == true)
        }

        table.insert(allPets, petInfo)
        if petInfo.isEquipped then
            table.insert(equippedPets, petInfo)
        end
    end

    table.sort(equippedPets, function(a, b) return (a.earningRate or 0) > (b.earningRate or 0) end)
    table.sort(allPets, function(a, b) return (a.earningRate or 0) > (b.earningRate or 0) end)

    -- Growing / Placed Eggs
    local eggInventory = save.EggInventory or {}
    local growingEggs = {}

    for uid, rawEgg in pairs(eggInventory) do
        local ok, decoded = pcall(function() return EggRecords.Decode(rawEgg) end)
        if ok and decoded then
            local meta = (AssetsData and AssetsData.Directory and AssetsData.Directory[decoded.AssetCategory]) or {}
            local isPlaced = (decoded.Placement ~= nil)
            local duration = (EggRecords and EggRecords.GrowthDuration and EggRecords.GrowthDuration(decoded)) or 0
            local remaining = 0
            local alpha = 0

            if isPlaced and EggRecords then
                pcall(function()
                    remaining = EggRecords.GrowthSecondsRemaining(decoded, now, 1)
                end)
                remaining = math.max(0, math.floor(remaining))
                pcall(function()
                    alpha = math.clamp(EggRecords.GrowthAlpha(decoded, now, 1), 0, 1)
                end)
            else
                remaining = math.floor(duration)
                alpha = 0
            end

            local isReady = isPlaced and (remaining <= 0)
            local mutList = decoded.Mutations or {}
            local mult = GetMutationMultiplier(mutList)
            local baseRate = meta.EarningRate or 0
            local finalRate = math.floor(baseRate * mult)

            table.insert(growingEggs, {
                uid = uid,
                eggName = (EggRecords and EggRecords.DisplayName and EggRecords.DisplayName(decoded)) or "Unknown Egg",
                petName = meta.DisplayName or decoded.AssetCategory or "Unknown Pet",
                petCategory = decoded.AssetCategory or "General",
                rarity = (meta.Rarity and meta.Rarity.DisplayName) or "Unknown",
                baseEarningRate = baseRate,
                earningRate = finalRate,
                mutations = mutList,
                durationSeconds = math.floor(duration),
                durationFormatted = FormatTime(math.floor(duration)),
                remainingSeconds = remaining,
                remainingFormatted = isPlaced and FormatTime(remaining) or "Chưa đặt vào Plot",
                progressPercent = math.floor(alpha * 1000) / 10,
                isPlaced = isPlaced,
                isReady = isReady
            })
        end
    end

    table.sort(growingEggs, function(a, b) return (a.remainingSeconds or 0) < (b.remainingSeconds or 0) end)

    return {
        userKey = userKey,
        pcName = PC_NAME,
        username = LocalPlayer.Name,
        displayName = LocalPlayer.DisplayName or LocalPlayer.Name,
        robloxId = tostring(LocalPlayer.UserId),
        speed = speed,
        moneyPerSecond = moneyPerSec,
        totalMoney = totalMoney,
        baseUpgradeLevel = baseUpgradeLevel,
        treadmillLevel = treadmillLevel,
        bossTokens = bossTokens,
        sakuraCrystals = sakuraCrystals,
        eggCount = #growingEggs,
        growingEggs = growingEggs,
        equippedCount = #equippedPets,
        equippedPets = equippedPets,
        inventoryCount = #allPets,
        allPets = allPets
    }
end

-- Export global helper for console or external scripts
if type(getgenv) == "function" then
    getgenv().GetStealAnEggStats = CollectStealAnEggStats
end

-- 6. Periodic Sync Loop to TrackStat Server
local isSyncing = false
local function syncStatsToServer()
    if isSyncing then return end
    isSyncing = true

    local success, stats = pcall(CollectStealAnEggStats)
    if not success or not stats then
        isSyncing = false
        return
    end

    local payload
    local encOk, encRes = pcall(function() return HttpService:JSONEncode(stats) end)
    if encOk then
        payload = encRes
    else
        isSyncing = false
        return
    end

    local reqOk, res = safeHttpRequest({
        Url = SERVER_URL .. "/stats/sync",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json",
            ["X-User-Key"] = userKey,
            ["Authorization"] = "Bearer " .. tostring(userKey)
        },
        Body = payload
    })

    if reqOk and res and res.Body then
        local decOk, data = pcall(function() return HttpService:JSONDecode(res.Body) end)
        if decOk and data then
            if data.success then
                updateToastStatus("CONNECTED [" .. tostring(PC_NAME) .. "]", false)
                print(string.format("[TrackStat SAE] Đồng bộ thành công: %s (Speed: %s, Money/s: %s, Eggs: %d, Pets: %d)",
                    stats.username, tostring(stats.speed), tostring(stats.moneyPerSecond), stats.eggCount, stats.equippedCount))
            elseif data.error == "PLAN_LIMIT_EXCEEDED" then
                updateToastStatus("PLAN LIMIT EXCEEDED", true)
                warn("[TrackStat SAE] Vượt quá giới hạn Plan: " .. tostring(data.message))
            else
                updateToastStatus("SYNCING...", false)
                warn("[TrackStat SAE] Server từ chối: " .. tostring(data.message or data.error))
            end
        else
            updateToastStatus("SYNCING...", false)
        end
    else
        updateToastStatus("SYNCING...", false)
    end

    isSyncing = false
end

-- Immediate initial sync
task.spawn(function()
    task.wait(2)
    syncStatsToServer()
end)

-- Main Background Sync Loop
task.spawn(function()
    while true do
        task.wait(SYNC_INTERVAL)
        pcall(syncStatsToServer)
    end
end)

print("====================================================================")
print("🚀 [3KG TrackStat] Steal An Egg Stat Tracker đã kích hoạt thành công!")
print(string.format("   Tài khoản: %s (@%s) | PC: %s", LocalPlayer.DisplayName, LocalPlayer.Name, PC_NAME))
print(string.format("   Tần suất đồng bộ: %d giây/lần", SYNC_INTERVAL))
print("====================================================================")
