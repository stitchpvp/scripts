--[[
    Script Name    : SpawnScripts/QueensColony/Groak.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Groak dialog
                   :
--]]

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
SpawnMob(NPC)
end

function InRange(NPC, Player)
    choice = math.random(1,2)

    if choice == 1 then
	PlayFlavor(NPC, "", "Good thing Murrar Shar is here!", "", 1689589577, 4560189, Player)
    else
	PlayFlavor(NPC, "", "It's amazing what you can make from a fish.", "", 1689589577, 4560189, Player)
    end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1016.mp3", "", "", 0, 0, Spawn)
end



