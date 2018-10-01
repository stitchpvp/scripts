--[[
	Script Name		:	freeport_dweller.lua
	Script Purpose	:	Waypoint Path for freeport_dweller.lua
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
	MovementLoopAddLocation(NPC, -200.81, -56.07, 94.51, 2, 0)
	MovementLoopAddLocation(NPC, -210.06, -56.08, 93.68, 2, 0)
	MovementLoopAddLocation(NPC, -213.38, -56.12, 74.44, 2, 0)
	MovementLoopAddLocation(NPC, -233.45, -56.06, 70.89, 2, 0)
	MovementLoopAddLocation(NPC, -268.51, -56.07, 71.08, 2, 0)
	MovementLoopAddLocation(NPC, -233.45, -56.06, 70.89, 2, 0)
	MovementLoopAddLocation(NPC, -213.38, -56.12, 74.44, 2, 0)
	MovementLoopAddLocation(NPC, -210.06, -56.08, 93.68, 2, 0)
	MovementLoopAddLocation(NPC, -200.81, -56.07, 94.51, 2, 0)
end