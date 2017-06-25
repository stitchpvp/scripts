--[[
    Script Name    : SpawnScripts/QueensColony/MaylinMeadowlark.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Maylin Meadowlark dialog
                   : 
--]]

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "I think I saw something moving out there!", "", 1689589577, 4560189, Spawn)
end