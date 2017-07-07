

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
MovementLoopAddLocation(NPC, 49.56, -19.12, -20.94, 1.5, math.random(10,20))
MovementLoopAddLocation(NPC, 49.56, -19.12, -20.94, 1.5, 0)
MovementLoopAddLocation(NPC, 49.56, -19.12, -20.94, 1.5, 0)
MovementLoopAddLocation(NPC, 49.56, -19.12, -20.94, 1.5, 0)
MovementLoopAddLocation(NPC, 49.56, -19.12, -20.94, 1.5, 0)
MovementLoopAddLocation(NPC, 49.56, -19.12, -20.94, 1.5, 0)
end
