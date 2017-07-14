function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end
local delay = math.random(1,5)
function waypoints(NPC)
MovementLoopAddLocation(NPC, 1327.23, -39.75, 297.03, 3, delay)
MovementLoopAddLocation(NPC, 1307.16, -36.74, 351.40, 3, 0)
MovementLoopAddLocation(NPC, 1268.11, -16.83, 426.62, 3, 0)
MovementLoopAddLocation(NPC, 1193.92, -34.11, 448.37, 3, 0)
MovementLoopAddLocation(NPC, 1100.77, -40.86, 472.50, 3, 0)
MovementLoopAddLocation(NPC, 959.26, -43.20, 424.63, 3, 0)
MovementLoopAddLocation(NPC, 856.53, -51.81, 365.19, 3, 0)
MovementLoopAddLocation(NPC, 762.78, -54.28, 321.60, 3, 0)
MovementLoopAddLocation(NPC, 718.37, -51.55, 278.90, 3, 0)
MovementLoopAddLocation(NPC, 708.38, -50.00, 257.98, 3, 0)
MovementLoopAddLocation(NPC, 767.70, -52.59, 249.56, 3, 0)
MovementLoopAddLocation(NPC, 976.83, -49.02, 162.02, 3, 0)
MovementLoopAddLocation(NPC, 1043.05, -43.54, 45.74, 3, 0)
MovementLoopAddLocation(NPC, 1152.41, -37.72, -262.70, 3, 0, "Panic")
MovementLoopAddLocation(NPC, 1061.20, -42.04, -13.78, 3, 0)
MovementLoopAddLocation(NPC, 1061.20, -42.04, -13.78, 3, 0)
MovementLoopAddLocation(NPC, 931.39, -52.21, 187.74, 3, 0)
MovementLoopAddLocation(NPC, 743.58, -51.39, 250.82, 3, 0)
MovementLoopAddLocation(NPC, 799.59, -54.40, 335.65, 3, 0)
MovementLoopAddLocation(NPC, 946.93, -49.64, 374.94, 3, 0)
MovementLoopAddLocation(NPC, 1120.64, -43.29, 400.03, 3, 0)
MovementLoopAddLocation(NPC, 1261.04, -32.07, 378.07, 3, 0)
MovementLoopAddLocation(NPC, 1347.62, -39.05, 286.17, 3, delay)
end

function Panic(NPC)
  PlayAnimation(NPC, 11680)
end
