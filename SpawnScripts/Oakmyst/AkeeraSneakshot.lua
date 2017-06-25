--[[
	Script Name	: SpawnScripts/Oakmyst/AkeeraSneakshot.lua
	Script Purpose	: Akeera Sneakshot
	Script Author	: Scatman
	Script Date	: 2009.05.10
	Script Notes	:
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 789.76, 13.34, -245.83, 3, 0)
	MovementLoopAddLocation(NPC, 793.01, 13.35, -246.9, 3, 0)
	MovementLoopAddLocation(NPC, 807.47, 11.57, -265.88, 3, 0)
	MovementLoopAddLocation(NPC, 820.86, 6.98, -267.12, 3, 0)
	MovementLoopAddLocation(NPC, 826.9, 6.08, -263.96, 3, 0)
	MovementLoopAddLocation(NPC, 834.42, 4.71, -264.45, 3, 0)
	MovementLoopAddLocation(NPC, 838.23, 3.76, -254.78, 3, 0)
	MovementLoopAddLocation(NPC, 850.58, 2.78, -252.93, 3, 0)
	MovementLoopAddLocation(NPC, 857.53, 2.17, -245.56, 3, 0)
	MovementLoopAddLocation(NPC, 877.64, 0.45, -248.21, 3, 0)
	MovementLoopAddLocation(NPC, 881.41, 0.51, -256.61, 3, 0)
	MovementLoopAddLocation(NPC, 890.92, 0.94, -261.56, 3, 0)
	MovementLoopAddLocation(NPC, 907.78, 2.28, -305.5, 3, 0)
	MovementLoopAddLocation(NPC, 906.17, 2.23, -308.59, 3, 0)
	MovementLoopAddLocation(NPC, 893.87, 2.26, -316.77, 3, 0)
	MovementLoopAddLocation(NPC, 888.89, 2.19, -315.29, 3, 0)
	MovementLoopAddLocation(NPC, 877.25, 1.58, -305.56, 3, 0)
	MovementLoopAddLocation(NPC, 863.24, 1.68, -304.98, 3, 0)
	MovementLoopAddLocation(NPC, 861.7, 1.78, -308.86, 3, 0)
	MovementLoopAddLocation(NPC, 862.09, 2.21, -319.13, 3, 0)
	MovementLoopAddLocation(NPC, 853.88, 3.25, -324.73, 3, 0)
	MovementLoopAddLocation(NPC, 839.42, 4.59, -315, 3, 0)
	MovementLoopAddLocation(NPC, 826.92, 7.18, -295.07, 3, 0)
	MovementLoopAddLocation(NPC, 824.09, 6.44, -284.43, 3, 0)
	MovementLoopAddLocation(NPC, 817.63, 7.65, -280.93, 3, 0)
	MovementLoopAddLocation(NPC, 811.34, 9.83, -271.11, 3, 0)
	MovementLoopAddLocation(NPC, 797.36, 12.62, -263.52, 3, 0)
	MovementLoopAddLocation(NPC, 783.76, 13.35, -253.78, 3, 0)
	MovementLoopAddLocation(NPC, 781.65, 13.72, -238.83, 3, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end