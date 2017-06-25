--[[
    Script Name    : SpawnScripts/QueensColony/LieutenantWestfall.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Lieutenant Westfall dialog
                   : 
--]]

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "What's that there!  To arms, the Morak are coming!", "point", 1689589577, 4560189, Spawn)
end

