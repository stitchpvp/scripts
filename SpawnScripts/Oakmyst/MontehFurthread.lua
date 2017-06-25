--[[
	Script Name	: SpawnScripts/Oakmyst/MontehFurthread.lua 
	Script Purpose	: Monteh Furthread
	Script Author	: Scatman
	Script Date	: 2009.05.10
	Script Notes	: 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 790.01, 13.34, -259.56, 3, 0)
	MovementLoopAddLocation(NPC, 797.43, 12.42, -265.56, 3, 0)
	MovementLoopAddLocation(NPC, 809.23, 10.54, -268.5, 3, 0)
	MovementLoopAddLocation(NPC, 811.17, 9.85, -270.65, 3, 0)
	MovementLoopAddLocation(NPC, 821.29, 7.15, -265.65, 3, 0)
	MovementLoopAddLocation(NPC, 827.03, 5.37, -269.39, 3, 0)
	MovementLoopAddLocation(NPC, 860.03, 1.96, -243.67, 3, 0)
	MovementLoopAddLocation(NPC, 883.67, 0.48, -252.77, 3, 0)
	MovementLoopAddLocation(NPC, 893.02, 0.84, -259.57, 3, 0)
	MovementLoopAddLocation(NPC, 905.65, 2.24, -287.73, 3, 0)
	MovementLoopAddLocation(NPC, 920.8, 2.26, -289.93, 3, 0)
	MovementLoopAddLocation(NPC, 942.84, 2.55, -282.7, 3, 0)
	MovementLoopAddLocation(NPC, 952.02, 5.16, -289.77, 3, 0)
	MovementLoopAddLocation(NPC, 939.77, 2.28, -283.23, 3, 0)
	MovementLoopAddLocation(NPC, 906.14, 2.11, -291.5, 3, 0)
	MovementLoopAddLocation(NPC, 898.59, 1.74, -266.52, 3, 0)
	MovementLoopAddLocation(NPC, 873.05, 0.82, -246.33, 3, 0)
	MovementLoopAddLocation(NPC, 850.96, 2.77, -244.8, 3, 0)
	MovementLoopAddLocation(NPC, 843.88, 3.01, -257.16, 3, 0)
	MovementLoopAddLocation(NPC, 826.35, 6.14, -265.41, 3, 0)
	MovementLoopAddLocation(NPC, 803.65, 12.07, -265.13, 3, 0)
	MovementLoopAddLocation(NPC, 767.43, 13.35, -247.6, 3, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end