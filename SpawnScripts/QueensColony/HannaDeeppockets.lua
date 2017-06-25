--[[
    Script Name    : SpawnScripts/QueensColony/HannaDeeppockets.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Hanna Deeppockets dialog
                   : 
--]]

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    choice = math.random(1,2)

    -- need the halfling greeting voiceovers
    if choice == 1 then
        PlayFlavor(NPC, "", "All your basic necessities you'll find here.", "", 1689589577, 4560189, Spawn)
    else
        PlayFlavor(NPC, "", "The Deeppockets have a long history of good deals, ask anyone!", "", 0, 0, Spawn)
    end
end

function targeted(NPC, Spawn)
    hailed(NPC, Spawn)
end

