function Ldl.Core.SendWebHook(title, message, module, real_module)
    local color = Ldl.Modules[real_module].color
    http.Post(Ldl.Config.Url, {
        password = Ldl.Config.Password,
        title = title,
        content = message,
        module_name = module,
        color = Ldl.Core.RGBToHex(color.r, color.g, color.b)
    }, function(r)
        if(Ldl.Config.LogCallback == true) then
            Ldl.Core.Print(r)
        end
    end, function(f)
        Ldl.Core.Print(f)
    end)
end

function Ldl.Core.RGBToHex(red, green, blue)
	return string.format("%.2X%.2X%.2X", red, green, blue)
end

function Ldl.Core.FormatPlayer(ply)
    if(!ply) then return end
    if(ply:IsBot()) then
        return "[" .. ply:Name() .. " (BOT)"
    end
    return "[" .. ply:Name() .. " (" .. ply:SteamID() .. ")](https://steamcommunity.com/profiles/" .. ply:SteamID64() .. ")"
end

function Ldl.Core.AddModule(name, color, hookname, callback)
    Ldl.Modules[name] = {
        color = color
    }

    hook.Add(hookname, "ldl.modules.modulehook." .. string.lower(string.Replace(name, " ", "")) .. "." .. hookname, callback)
end