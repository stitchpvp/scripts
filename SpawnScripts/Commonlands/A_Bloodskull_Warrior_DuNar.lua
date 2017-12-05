require('SpawnScripts/Generic/BrokentuskVoiceOvers');
function spawn(NPC)
 waypoints(NPC)
end

function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
end

function aggro(NPC, Spawn)
 generic_aggro(NPC, Spawn)
end

function healthchanged(NPC, Spawn)
  generic_healthchanged(NPC, Spawn)
end

function killed(NPC, Spawn)
  generic_killed(NPC, Spawn)
end

function death(NPC, Spawn)
  generic_death(NPC, Spawn)
end

function respawn(NPC)
SpawnMob(NPC)
end

function waypoints(NPC)
MovementLoopAddLocation(NPC, 96.55, -47.89, 597.81, 2, 0)
MovementLoopAddLocation(NPC, 163.25, -47.98, 616.47, 2, 0)
MovementLoopAddLocation(NPC, 212.52, -47.84, 623.7, 2, 0)
MovementLoopAddLocation(NPC, 303.27, -47.9, 573.51, 2, 0)
MovementLoopAddLocation(NPC, 268.08, -46.92, 509.29, 2, 0)
MovementLoopAddLocation(NPC, 166.34, -45.78, 433.31, 2, 0)
MovementLoopAddLocation(NPC, 84.3, -47.62, 471.94, 2, 0)
MovementLoopAddLocation(NPC, 34.56, -47.81, 587.26, 2, 0)
end

