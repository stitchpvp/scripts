require('/SpawnScripts/Generic/Required_random_pattern_medium');
require('SpawnScripts/Generic/GenericGuardVoiceOvers');
function spawn(NPC)
  AddPathing(NPC)
end

function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  GenericGuardHail(NPC, Spawn, Faction)
end 

function spawn(NPC)
	waypoints(NPC)
end

function respawn(NPC)
end


function waypoints(NPC)
MovementLoopAddLocation(NPC, -570.9, -42.74, -256.61, 1, 5)
MovementLoopAddLocation(NPC, -556.18, -41.97, -263.54, 1, 0)
MovementLoopAddLocation(NPC, -538.93, -41.97, -271.67, 1, 0)
MovementLoopAddLocation(NPC, -529.79, -42.47, -275.98, 1, 0)
MovementLoopAddLocation(NPC, -509.54, -43.74, -285.52, 1, 0)
MovementLoopAddLocation(NPC, -498.99, -44.29, -290.49, 1, 0)
MovementLoopAddLocation(NPC, -488.2, -44.95, -295.58, 1, 0)
MovementLoopAddLocation(NPC, -480.34, -45.13, -299.28, 1, 0)
MovementLoopAddLocation(NPC, -457.66, -43.93, -309.52, 1, 0)
MovementLoopAddLocation(NPC, -434.99, -41.71, -318.49, 1, 0)
MovementLoopAddLocation(NPC, -416.32, -41.71, -325.87, 1, 0)
MovementLoopAddLocation(NPC, -399.86, -42.97, -334.71, 1, 0)
MovementLoopAddLocation(NPC, -412.43, -41.71, -328.63, 1, 0)
MovementLoopAddLocation(NPC, -429.49, -41.71, -320.74, 1, 0)
MovementLoopAddLocation(NPC, -444.45, -42.31, -313.84, 1, 0)
MovementLoopAddLocation(NPC, -468.35, -44.85, -304.37, 1, 0)
MovementLoopAddLocation(NPC, -494.63, -44.58, -292.45, 1, 0)
MovementLoopAddLocation(NPC, -519.63, -43.29, -281.11, 1, 0)
MovementLoopAddLocation(NPC, -543.62, -41.97, -270.23, 1, 0)
MovementLoopAddLocation(NPC, -575.35, -43.36, -255.03, 1, 0)
MovementLoopAddLocation(NPC, -578.67, -43.41, -253.51, 1, 5)
end