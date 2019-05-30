if(!gmod.GetGamemode().Name == "DarkRP") then return end

--[[
--   DarkRP Modules
]]

local color = Color(175, 0, 255)

-- Player Change Job
Ldl.Core.AddModule("Job Change", color, "OnPlayerChangedTeam", function(ply, before, after)
    Ldl.Core.SendWebHook("Player Changed Jobs.", Ldl.Core.FormatPlayer(ply) .. " changed jobs to '" .. team.GetName(after) .. "' after being a '" .. team.GetName(before) .. "'.", "DarkRP", "Job Change")
end)

-- Adverts
Ldl.Core.AddModule("Adverts", color, "playerAdverted", function(ply, args, board)
    Ldl.Core.SendWebHook("Player Adverted.", Ldl.Core.FormatPlayer(ply) .. " adverted the following: '" .. args .. "'.", "DarkRP", "Adverts")
end)

-- Arrests
Ldl.Core.AddModule("Arrests", color, "playerArrested", function(criminal, time, cop)
    Ldl.Core.SendWebHook("Player Arrested.", Ldl.Core.FormatPlayer(cop) .. " arrested " .. Ldl.Core.FormatPlayer(criminal) .. " for " .. time .. "s.", "DarkRP", "Arrests")
end)
Ldl.Core.AddModule("Unarrests", color, "playerUnArrested", function(criminal, cop)
    Ldl.Core.SendWebHook("Player unarrested.", Ldl.Core.FormatPlayer(cop) .. " released " .. Ldl.Core.FormatPlayer(criminal) .. " from jail.", "DarkRP", "Unarrests")
end)

-- RPName Changed
Ldl.Core.AddModule("RP Name Changes", color, "onPlayerChangedName", function(ply, old, new)
    Ldl.Core.SendWebHook("Player changed RP Name.", Ldl.Core.FormatPlayer(ply) .. " changed RP Name to '" .. new .. "' from '" .. old .. "'.", "DarkRP", "RP Name Changes")
end)

-- Wanted
Ldl.Core.AddModule("Wanted", color, "playerWanted", function(ply, cop, reason)
    Ldl.Core.SendWebHook("Player Wanted", Ldl.Core.FormatPlayer(ply) .. " is wanted by " .. Ldl.Core.FormatPlayer(cop) .. " for the reason '" .. reason .. "'.", "DarkRP", "Wanted")
end)
Ldl.Core.AddModule("Unwanted", color, "playerUnWanted", function(ply, cop)
    if(!cop) then
        Ldl.Core.SendWebHook("Player UnWanted", Ldl.Core.FormatPlayer(ply) .. " is not longer wanted.", "DarkRP", "Unwanted")
    else
        Ldl.Core.SendWebHook("Player UnWanted", Ldl.Core.FormatPlayer(cop) .. " unwanted " .. Ldl.Core.FormatPlayer(ply) .. ".", "DarkRP", "Unwanted")
    end
end)

-- Warrant
Ldl.Core.AddModule("Warrant", color, "playerWarranted", function(ply, cop, reason)
    Ldl.Core.SendWebHook("Player Warranted", Ldl.Core.FormatPlayer(ply) .. " has been given a warrant by " .. Ldl.Core.FormatPlayer(cop) .. " for the reason '" .. reason .. "'.", "DarkRP", "Warrant")
end)
Ldl.Core.AddModule("Unwarrant", color, "playerUnWarranted", function(ply, cop)
    if(!cop) then
        Ldl.Core.SendWebHook("Player UnWarranted", Ldl.Core.FormatPlayer(ply) .. " is not longer warranted.", "DarkRP", "Unwarrant")
    else
        Ldl.Core.SendWebHook("Player UnWarranted", Ldl.Core.FormatPlayer(cop) .. " unwarranted " .. Ldl.Core.FormatPlayer(ply) .. ".", "DarkRP", "Unwarrant")
    end
end)