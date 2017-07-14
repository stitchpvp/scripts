function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
MovementLoopAddLocation(NPC, -255.18, -22.97, -594.24, 2, 0)
MovementLoopAddLocation(NPC, 248.3, -22.97, -359.77, 2, 0)
MovementLoopAddLocation(NPC, 634.43, -22.97, -273.83, 2, 0)
MovementLoopAddLocation(NPC, 884.56, -22.97, -125.54, 2, 0)
MovementLoopAddLocation(NPC, 921.37, -22.97, 44.42, 2, 0)
MovementLoopAddLocation(NPC, 763.94, -22.97, 207.09, 2, 0)
MovementLoopAddLocation(NPC, 601.73, -22.97, 440.08, 2, 0)
MovementLoopAddLocation(NPC, 520.39, -22.97, 637.97, 2, 0)
MovementLoopAddLocation(NPC, -52.24, -22.97, 469.68, 2, 0)
MovementLoopAddLocation(NPC, -375.84, -7.4, 355.96, 2, 0)
MovementLoopAddLocation(NPC, -771.16, -7.4, 316.05, 2, 0)
MovementLoopAddLocation(NPC, -971.69, -7.4, 71.72, 2, 0)
MovementLoopAddLocation(NPC, -938, -21.55, -361.04, 2, 0)
MovementLoopAddLocation(NPC, -687.05, -21.55, -615.69, 2, 0)
MovementLoopAddLocation(NPC, -409.63, -21.55, -760.91, 2, 0)
end
