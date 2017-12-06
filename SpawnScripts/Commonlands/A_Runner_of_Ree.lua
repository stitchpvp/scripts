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

function waypoints(NPC)
MovementLoopAddLocation(NPC, -241.94, -48.04, -926.48, 3, 0)
MovementLoopAddLocation(NPC, -214.8, -44.24, -880.85, 3, 0)
MovementLoopAddLocation(NPC, -71.41, -40.74, -871.07, 3, 0)
MovementLoopAddLocation(NPC, -34.67, -43.02, -862.05, 3, 0)
MovementLoopAddLocation(NPC, 34.88, -43.22, -844.12, 3, 0)
MovementLoopAddLocation(NPC, 77.32, -44.35, -819.5, 3, 0)
MovementLoopAddLocation(NPC, 154.16, -48.18, -688.87, 3, 0)
MovementLoopAddLocation(NPC, 84.82, -45.1, -814, 3, 0)
MovementLoopAddLocation(NPC, 23.05, -42.29, -853.17, 3, 0)
MovementLoopAddLocation(NPC, -47.51, -42.51, -858.89, 3, 0)
MovementLoopAddLocation(NPC, -80, -40.85, -871.19, 3, 0)
MovementLoopAddLocation(NPC, -221.23, -45.97, -858.93, 3, 0)
MovementLoopAddLocation(NPC, -232.8, -48.04, -897.3, 3, 0)
MovementLoopAddLocation(NPC, -251.24, -48.01, -948.31, 3, 0)
MovementLoopAddLocation(NPC, -264.3, -47.99, -977.43, 3, 0)
end

function respawn(NPC)
spawn(NPC)
end
