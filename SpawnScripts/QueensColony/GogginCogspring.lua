--[[
    Script Name    : SpawnScripts/QueensColony/GogginCogspring.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Goggin Cogspring dialog
                   : 
--]]

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "Some day I'll get out there and work off this tab I have with Galan.", "", 0, 0, Spawn)
end

