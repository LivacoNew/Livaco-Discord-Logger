Ldl = {}
Ldl.Core = Ldl.Core or {}
Ldl.Modules = Ldl.Modules or {}

function Ldl.Core.Print(...)
    local args = {...}
    MsgC(Color(255, 255, 0, 255), "[Livaco's Discord Logger] ")
    MsgC(Color(255, 255, 255, 255), unpack(args))
    MsgC(Color(255, 255, 255, 255), "\n")
end

if(SERVER) then
    Ldl.Config = Ldl.Config or {}

    Ldl.Core.Print("Loading Livaco's Discord Logger.")
    Ldl.Core.Print("")

    Ldl.Core.Print("Loading config file.")
    include("ldl/config/sv_config.lua")
    Ldl.Core.Print("")

    Ldl.Core.Print("Loading core files.")
    for k,v in pairs(file.Find("ldl/core/sv_*.lua", "LUA")) do
        Ldl.Core.Print("    " .. v)
        include("ldl/core/" .. v)
    end
    Ldl.Core.Print("")

    Ldl.Core.Print("Loading module files.")
    for k,v in pairs(file.Find("ldl/modules/*.lua", "LUA")) do
        Ldl.Core.Print("    " .. v)
        include("ldl/modules/" .. v)
    end

    Ldl.Core.Print("")
    Ldl.Core.Print("Loaded.")
end