--[[
--   Sandbox Modules
]]

local color = Color(255, 135, 0)

-- Player Connected
Ldl.Core.AddModule("Player Connected", color, "PlayerConnect", function(name)
    Ldl.Core.SendWebHook("Player Connected.", name .. " joined the server.", "Sandbox", "Player Connected")
end)
Ldl.Core.AddModule("Player Disconnected", color, "PlayerDisconnected", function(ply)
    Ldl.Core.SendWebHook("Player Disconnected.", Ldl.Core.FormatPlayer(ply) .. " disconnected from the server.", "Sandbox", "Player Disconnected")
end)

-- Player Initialy Spawned
Ldl.Core.AddModule("Player Initial Spawn", color, "PlayerInitialSpawn", function(ply)
    Ldl.Core.SendWebHook("Player spawned for the first time.", Ldl.Core.FormatPlayer(ply) .. " spawned into the server for the first time of their session.", "Sandbox", "Player Initial Spawn")
end)

-- Chat
Ldl.Core.AddModule("Chat", color, "PlayerSay", function(sender, text, team)
    if(team == false) then
        Ldl.Core.SendWebHook("Player said a message in global chat.", Ldl.Core.FormatPlayer(sender) .. " said '" .. text .. "' in global chat.", "Sandbox", "Chat")
    else
        Ldl.Core.SendWebHook("Player said a message in global chat.", Ldl.Core.FormatPlayer(sender) .. " said '" .. text .. "' in team chat.", "Sandbox", "Chat")
    end
end)

-- Deaths
Ldl.Core.AddModule("Death", color, "PlayerDeath", function(victim, item, attacker)
    if(victim == attacker) then
        Ldl.Core.SendWebHook("Player Suicided.", Ldl.Core.FormatPlayer(victim) .. " commited suicide.", "Sandbox", "Death")
    else
        Ldl.Core.SendWebHook("Player vs Player.", Ldl.Core.FormatPlayer(victim) .. " was killed by " .. Ldl.Core.FormatPlayer(attacker) .. ".", "Sandbox", "Death")
    end
end)