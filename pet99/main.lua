local _0x3KG_K1 = 139
local _0x3KG_K2 = 45
local _0x3KG_BYTES = {
  {246,202,199,223,195,212,213},
  {244,195,214,202,207,197,199,210,195,194,245,210,201,212,199,193,195},
  {238,210,210,214,245,195,212,208,207,197,195},
  {210,199,196,202,195},
  {151,148,149,146,147,144,145,158,159},
  {194,195,192,199,211,202,210},
  {250,200,250,200,253,242,244,231,229,237,245,242,231,242,134,246,245,159,159,134,227,244,244,233,244,251,250,200,68,60,6,73,30,41,134,228,71,28,7,200,134,197,206,96,22,199,134,200,206,71,28,11,214,134,243,213,195,212,134,237,195,223,134,197,101,7,134,200,206,101,4,200,135,250,200,240,211,207,134,202,101,20,200,193,134,197,201,214,223,134,203,101,5,134,98,55,207,134,205,101,14,203,134,237,195,223,134,197,71,29,1,199,134,196,71,28,7,200,134,210,71,29,13,134,241,195,196,134,226,199,213,206,196,201,199,212,194,136,250,200},
  {206,210,210,214,213,156,137,137,210,212,199,197,205,213,210,199,210,136,196,199,205,207,206,211,196,136,213,207,210,195,137,214,213,159,159,137,199,214,207},
  {246,229,139,150,151},
  {192,211,200,197,210,207,201,200},
  {246,233,245,242},
  {199,214,214,202,207,197,199,210,207,201,200,137,204,213,201,200},
  {137,208,195,212,207,192,223,139,205,195,223,153,205,195,223,155},
  {225,227,242},
  {229,201,200,210,195,200,210,139,242,223,214,195},
  {254,139,231,246,239,139,237,195,223},
  {254,139,243,213,195,212,139,237,195,223},
  {237,195,223,134,246,245,159,159,134,205,206,101,18,200,193,134,206,71,29,5,214,134,202,71,29,33,134,206,201,71,28,17,197,134,98,55,101,5,134,196,71,29,45,134,205,206,101,21,199,135},
  {150},
  {252,201,200,195,134,151},
  {234,207,196,212,199,212,223},
  {229,202,207,195,200,210},
  {245,199,208,195},
  {206,211,193,195},
  {210,207,210,199,200,207,197},
  {202,195,199,194,195,212,213,210,199,210,213},
  {226,207,199,203,201,200,194,213},
  {225,195,203,213},
  {137,213,210,199,210,213,137,213,223,200,197}
}
local _0xSYS_char = string.char
local _0xSYS_concat = table.concat
local _0xSYS_bxor = (bit32 and bit32.bxor) or (bit and bit.bxor) or function(a, b)
    local r = 0
    for i = 0, 31 do
        local a1 = (a / 2^i) % 2 >= 1
        local b1 = (b / 2^i) % 2 >= 1
        if a1 ~= b1 then r = r + 2^i end
    end
    return r
end
local _0x3KG_CACHE = {}
local _0x3KG_STR = setmetatable({}, {
    __index = function(tbl, idx)
        local cached = _0x3KG_CACHE[idx]
        if cached then return cached end
        local raw = _0x3KG_BYTES[idx]
        if not raw then return "" end
        local s = {}
        for j = 1, #raw do
            local b = _0xSYS_bxor(_0xSYS_bxor(raw[j], _0x3KG_K2), _0x3KG_K1) % 256
            s[j] = _0xSYS_char(b)
        end
        local str = _0xSYS_concat(s)
        _0x3KG_CACHE[idx] = str
        return str
    end
})
pcall(function()
    if getfenv and type(getfenv) == "function" then
        local _0xENV = getfenv()
        _0xENV["__3KG_PROTECTED__"] = true
        _0xENV["__PS99_TRACKER__"] = "v1.0"
    end
end)
pcall(function()
    if not game:IsLoaded() then
        repeat task.wait(0.5) until game:IsLoaded()
    end
end)
local Players = game:GetService(_0x3KG_STR[1])
local ReplicatedStorage = game:GetService(_0x3KG_STR[2])
local HttpService = game:GetService(_0x3KG_STR[3])
local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
    local startT = tick()
    while not Players.LocalPlayer and (tick() - startT < 10) do
        task.wait(0.5)
    end
    LocalPlayer = Players.LocalPlayer
end
local hasValidConfig = _G.Config and type(_G.Config) == _0x3KG_STR[4]
local userKey = (hasValidConfig and (_G.Config.USER_KEY or _G.Config.API_KEY)) or ""
if not hasValidConfig or not userKey or userKey == "" or userKey == _0x3KG_STR[5] or userKey == _0x3KG_STR[6] then
    if LocalPlayer then
        LocalPlayer:Kick(_0x3KG_STR[7])
    end
    return
end
local CONFIG = {
    SERVER_URL = (_G.Config and _G.Config.SERVER_URL) or _0x3KG_STR[8],
    USER_KEY = userKey,
    PC_NAME = (_G.Config and _G.Config.PC_NAME) or _0x3KG_STR[9]
}
local SERVER_URL = CONFIG.SERVER_URL
local API_KEY = CONFIG.USER_KEY
local PC_NAME = CONFIG.PC_NAME
local function safeHttpRequest(options)
    local req = (type(syn) == _0x3KG_STR[4] and type(syn.request) == _0x3KG_STR[10] and syn.request)
             or (type(http) == _0x3KG_STR[4] and type(http.request) == _0x3KG_STR[10] and http.request)
             or (type(http_request) == _0x3KG_STR[10] and http_request)
             or (type(request) == _0x3KG_STR[10] and request)
             or (type(fluxus) == _0x3KG_STR[4] and type(fluxus.request) == _0x3KG_STR[10] and fluxus.request)
             or (type(krnl) == _0x3KG_STR[4] and type(krnl.request) == _0x3KG_STR[10] and krnl.request)
    if req then
        local ok, res = pcall(function() return req(options) end)
        if ok and res then return ok, res end
    end
    if options.Method == _0x3KG_STR[11] and game.HttpPost then
        local ok, bodyRes = pcall(function()
            return game:HttpPost(options.Url, options.Body or "", _0x3KG_STR[12])
        end)
        if ok then return true, { StatusCode = 200, Body = bodyRes } end
    elseif game.HttpGet then
        local ok, bodyRes = pcall(function() return game:HttpGet(options.Url) end)
        if ok then return true, { StatusCode = 200, Body = bodyRes } end
    end
    return false, nil
end
local function verifyKeyWithServer()
    local verifyUrl = SERVER_URL .. _0x3KG_STR[13] .. tostring(API_KEY)
    local success, response = safeHttpRequest({
        Url = verifyUrl,
        Method = _0x3KG_STR[14],
        Headers = {
            [_0x3KG_STR[15]] = _0x3KG_STR[12],
            [_0x3KG_STR[16]] = API_KEY,
            [_0x3KG_STR[17]] = API_KEY
        }
    })
    if success and response and response.Body then
        local ok, data = pcall(function() return HttpService:JSONDecode(response.Body) end)
        if ok and data then
            if data.valid == false then
                if LocalPlayer then LocalPlayer:Kick(_0x3KG_STR[18]) end
                return false
            end
        end
    end
    return true
end
if not verifyKeyWithServer() then return end
local function collectPs99Stats()
    local diamonds = 0
    local coins = _0x3KG_STR[19]
    local rank = 1
    local rebirth = 0
    local area = _0x3KG_STR[20]
    local hugePets = 0
    local titanicPets = 0
    local eggsHatched = 0
    local inventory = {}
    pcall(function()
        local saveModule = ReplicatedStorage:FindFirstChild(_0x3KG_STR[21]) and ReplicatedStorage.Library:FindFirstChild(_0x3KG_STR[22]) and ReplicatedStorage.Library.Client:FindFirstChild(_0x3KG_STR[23])
        if saveModule then
            local Save = require(saveModule)
            local saveData = Save.Get()
            if saveData then
                diamonds = tonumber(saveData.Diamonds) or 0
                rebirth = tonumber(saveData.Rebirths) or 0
                rank = tonumber(saveData.Rank) or 1
                eggsHatched = tonumber(saveData.EggsHatched) or 0
                if saveData.Inventory and saveData.Inventory.Pet then
                    for _, petData in pairs(saveData.Inventory.Pet) do
                        local id = tostring(petData.id or ""):lower()
                        if string.find(id, _0x3KG_STR[24]) then
                            hugePets = hugePets + (tonumber(petData._am) or 1)
                        elseif string.find(id, _0x3KG_STR[25]) then
                            titanicPets = titanicPets + (tonumber(petData._am) or 1)
                        end
                        table.insert(inventory, { id = petData.id, amount = petData._am or 1 })
                    end
                end
            end
        end
    end)
    if diamonds == 0 then
        local ls = LocalPlayer:FindFirstChild(_0x3KG_STR[26])
        if ls then
            local dObj = ls:FindFirstChild(_0x3KG_STR[27]) or ls:FindFirstChild(_0x3KG_STR[28])
            if dObj then diamonds = tonumber(dObj.Value) or 0 end
        end
    end
    return {
        robloxId = tostring(LocalPlayer.UserId),
        username = LocalPlayer.Name,
        displayName = LocalPlayer.DisplayName,
        pcName = PC_NAME,
        userKey = API_KEY,
        diamonds = diamonds,
        coins = tostring(coins),
        rank = rank,
        rebirth = rebirth,
        area = area,
        hugePets = hugePets,
        titanicPets = titanicPets,
        eggsHatched = eggsHatched,
        inventory = inventory,
        timestamp = os.time()
    }
end
local function sendPs99Sync()
    local ok, stats = pcall(collectPs99Stats)
    if not ok or not stats then return end
    safeHttpRequest({
        Url = SERVER_URL .. _0x3KG_STR[29],
        Method = _0x3KG_STR[11],
        Headers = {
            [_0x3KG_STR[15]] = _0x3KG_STR[12],
            [_0x3KG_STR[16]] = API_KEY,
            [_0x3KG_STR[17]] = API_KEY
        },
        Body = HttpService:JSONEncode({ player = stats, gameId = tostring(game.PlaceId) })
    })
end
task.spawn(function()
    pcall(sendPs99Sync)
end)
task.spawn(function()
    while true do
        task.wait(15)
        pcall(sendPs99Sync)
    end
end)