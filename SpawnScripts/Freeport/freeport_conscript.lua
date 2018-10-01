--[[
	Script Name		:	freeport_conscript.lua
	Script Purpose	:	Waypoint Path for freeport_conscript.lua
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
	MovementLoopAddLocation(NPC, -300.64, -56.07, 58.3, 2, 10)
	MovementLoopAddLocation(NPC, -275.93, -56.14, 95.95, 2, 0)
	MovementLoopAddLocation(NPC, -265.73, -55.52, 93.71, 2, 0)
	MovementLoopAddLocation(NPC, -245.19, -55.64, 93.1, 2, 0)
	MovementLoopAddLocation(NPC, -231.93, -55.71, 88.51, 2, 10)
	MovementLoopAddLocation(NPC, -245.19, -55.64, 93.1, 2, 0)
	MovementLoopAddLocation(NPC, -265.73, -55.52, 93.71, 2, 0)
	MovementLoopAddLocation(NPC, -275.93, -56.14, 95.95, 2, 0)
	MovementLoopAddLocation(NPC, -300.64, -56.07, 58.3, 2, 10)
end