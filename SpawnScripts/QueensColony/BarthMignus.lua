--[[
    Script Name    : SpawnScripts/QueensColony/BarthMignus.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Barth Mignus dialog
                   : 
--]]

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "I hear Murrar Shar is on the island.", "", 1689589577, 4560189, Spawn)
end


