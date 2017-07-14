
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
MovementLoopAddLocation(NPC, -678.09, -48.04, 443.49, 2, 0)
MovementLoopAddLocation(NPC, -736.66, -48.04, 473.26, 2, 0)
MovementLoopAddLocation(NPC, -738.31, -48.04, 538.09, 2, 0)
MovementLoopAddLocation(NPC, -674.76, -47.63, 599.61, 2, 0)
MovementLoopAddLocation(NPC, -610.05, -47.46, 589.93, 2, 0)
MovementLoopAddLocation(NPC, -597.13, -48.04, 516.15, 2, 0)
MovementLoopAddLocation(NPC, -641.07, -47.91, 454.3, 2, 0)
MovementLoopAddLocation(NPC, -660.7, -46.73, 524.31, 2, 0)
MovementLoopAddLocation(NPC, -717.55, -48.04, 533.24, 2, 0)
MovementLoopAddLocation(NPC, -711.87, -48.04, 460.53, 2, 0)
MovementLoopAddLocation(NPC, -602.53, -47.98, 466.61, 2, 0)
MovementLoopAddLocation(NPC, -642.09, -48.03, 439.88, 2, 0)
end
