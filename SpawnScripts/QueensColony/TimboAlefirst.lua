--[[
    Script Name    : SpawnScripts/QueensColony/TimboAlefirst.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Timbo Alefirst dialog
                   : 
--]]

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Wow, Meri is a great dancer!", "", 1689589577, 4560189, Spawn)
end