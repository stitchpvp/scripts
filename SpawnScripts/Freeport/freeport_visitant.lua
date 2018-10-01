--[[
	Script Name		:	freeport_visitant.lua
	Script Purpose	:	Waypoint Path for freeport_visitant.lua
	Script Author	:	Rixan
	Script Date		:	10/1/2018 12:00:00 AM
	Script Notes	:	<special-instructions>
--]]

function spawn(NPC)
  waypoints(NPC)
end

function respawn(NPC)
  spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -304.94, -56.07, 84.18, 2, 10)
	MovementLoopAddLocation(NPC, -281.76, -56.07, 77.09, 2, 0)
	MovementLoopAddLocation(NPC, -261.86, -56.07, 70.47, 2, 0)
	MovementLoopAddLocation(NPC, -250.45, -56.06, 70.18, 2, 0)
	MovementLoopAddLocation(NPC, -245.84, -56.06, 75.71, 2, 10)
	MovementLoopAddLocation(NPC, -250.45, -56.06, 70.18, 2, 0)
	MovementLoopAddLocation(NPC, -261.86, -56.07, 70.47, 2, 0)
	MovementLoopAddLocation(NPC, -281.76, -56.07, 77.09, 2, 0)
	MovementLoopAddLocation(NPC, -304.94, -56.07, 84.18, 2, 10)
end