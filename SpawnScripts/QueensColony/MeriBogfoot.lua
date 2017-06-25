--[[
    Script Name    : SpawnScripts/QueensColony/MeriBogfoot.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Meri Bogfoot dialog
                   : 
--]]

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
    spawn(NPC)
end

function InRange(NPC, Player)
    PlayFlavor(NPC, "", "Left foot, right foot, spin...", "", 1689589577, 4560189)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", "", "", 0, 0, Spawn)
end