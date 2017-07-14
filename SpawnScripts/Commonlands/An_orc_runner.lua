require('/SpawnScripts/Generic/BrokentuskVoiceOvers');
function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
local speed = math.random(42, 47) / 10
local delay = math.random(1,5)
MovementLoopAddLocation(NPC, -780.46, -47.39, 630.21, speed, 0)
MovementLoopAddLocation(NPC, -662.91, -47.33, 638.96, speed, 0)
MovementLoopAddLocation(NPC, -618.83, -47.88, 635.99, speed, 0)
MovementLoopAddLocation(NPC, -536.5, -45.07, 642.18, speed, 0)
MovementLoopAddLocation(NPC, -475.24, -47.3, 643.91, speed, 0)
MovementLoopAddLocation(NPC, -424.03, -47.82, 643.01, speed, 0)
MovementLoopAddLocation(NPC, -325.15, -46.56, 588.72, speed, 0)
MovementLoopAddLocation(NPC, -265.28, -42.54, 564.45, speed, 0)
MovementLoopAddLocation(NPC, -214.75, -41.82, 556.15, speed, 0)
MovementLoopAddLocation(NPC, -116.55, -45.48, 590.57, speed, 0)
MovementLoopAddLocation(NPC, -37.82, -45.58, 598.77, speed, 0)
MovementLoopAddLocation(NPC, 145.57, -47.93, 612.89, speed, 0)
MovementLoopAddLocation(NPC, 221.02, -47.72, 615.25, speed, 0)
MovementLoopAddLocation(NPC, 309.62, -46.78, 245.95, speed, 0)
MovementLoopAddLocation(NPC, 391.66, -46.87, 250.33, speed, 0)
MovementLoopAddLocation(NPC, 778.62, -47.66, 427.31, speed, 0)
MovementLoopAddLocation(NPC, 872.5, -36.49, 452.89, speed, 0)
MovementLoopAddLocation(NPC, 585.76, -47.38, 260.88, speed, 0)
MovementLoopAddLocation(NPC, 438.11, -47.38, 255.78, speed, 0)
MovementLoopAddLocation(NPC, 382.49, -46.54, 249.44, speed, 0)
MovementLoopAddLocation(NPC, 343.92, -46.31, 249.01, speed, 0)
MovementLoopAddLocation(NPC, 313.24, -46.74, 248.16, speed, 0)
MovementLoopAddLocation(NPC, 187.27, -48, 271.11, speed, 0)
MovementLoopAddLocation(NPC, 72.79, -46.75, 267.17, speed, 0)
MovementLoopAddLocation(NPC, -16.5, -48.04, 295.94, speed, 0)
MovementLoopAddLocation(NPC, 2.99, -47.04, 369.45, speed, 0)
MovementLoopAddLocation(NPC, -65.73, -44.27, 405.27, speed, 0)
MovementLoopAddLocation(NPC, -132.07, -46.91, 456.02, speed, 0)
MovementLoopAddLocation(NPC, -226.94, -45.7, 498.6, speed, 0)
MovementLoopAddLocation(NPC, -261.69, -46.98, 413.45, speed, 0)
MovementLoopAddLocation(NPC, -188, -46.77, 323.75, speed, 0)
MovementLoopAddLocation(NPC, -267.15, -47.39, 246.2, speed, 0)
MovementLoopAddLocation(NPC, -332.86, -42.53, 327.11, speed, 0)
MovementLoopAddLocation(NPC, -371.1, -44.3, 328.47, speed, 0)
MovementLoopAddLocation(NPC, -601.87, -46.81, 357.46, speed, 0)
MovementLoopAddLocation(NPC, -655.13, -45.02, 420.88, speed, 0)
MovementLoopAddLocation(NPC, -690, -48.04, 540.61, speed, 0)
MovementLoopAddLocation(NPC, -857.66, -47.99, 605.48, speed, 0)
MovementLoopAddLocation(NPC, -851.03, -47.53, 647.4, speed, 0)
MovementLoopAddLocation(NPC, -818.88, -47.72, 626.26, speed, delay)
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