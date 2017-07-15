require('/SpawnScripts/Generic/BrokentuskVoiceOvers');
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
MovementLoopAddLocation(NPC, -430.75, -45.59, 573.91, 2, 0)
MovementLoopAddLocation(NPC, -472.99, -47.39, 634.21, 2, 0)
MovementLoopAddLocation(NPC, -501.05, -48.04, 568.88, 2, 0)
MovementLoopAddLocation(NPC, -567.46, -48.56, 593.91, 2, 0)
MovementLoopAddLocation(NPC, -612.99, -48.04, 503.04, 2, 0)
MovementLoopAddLocation(NPC, -560.67, -47.72, 456.09, 2, 0)
MovementLoopAddLocation(NPC, -487.72, -48.04, 428.14, 2, 0)
MovementLoopAddLocation(NPC, -451.43, -48.04, 516.06, 2, 0)
end