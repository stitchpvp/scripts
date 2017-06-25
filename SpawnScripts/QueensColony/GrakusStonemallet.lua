--[[
    Script Name    : SpawnScripts/QueensColony/GrakusStonemallet.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Grakus Stonemallet dialog
                   : 
--]]

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "The Sapswill stout that we used to get from the goblins has all but disappeared.  We need to fix this problem immediately.", "", 1689589577, 4560189, Spawn)
end

