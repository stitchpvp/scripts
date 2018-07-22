--[[
	Script Name		:	LucanicKnightMarcusRusonius.lua
	Script Purpose	:	Waypoint Path for Lucanic Knight Marcus Rusonius
	Script Author	:	Rixan
	Script Date		:	7/22/2018
	Script Notes	:	<special-instructions>
--]]

function spawn(NPC)
  waypoints(NPC)
end

function respawn(NPC)
  spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -38.08, -19.98, 9.11, 5, 8)
	MovementLoopAddLocation(NPC, -34.26, -19.98, 45.98, 5, 0)
	MovementLoopAddLocation(NPC, 9.42, -19.97, 56.03, 5, 0)
	MovementLoopAddLocation(NPC, 34.49, -19.6, 44.95, 5, 8)
	MovementLoopAddLocation(NPC, 9.42, -19.97, 56.03, 5, 0)
	MovementLoopAddLocation(NPC, -34.26, -19.98, 45.98, 5, 0)
	MovementLoopAddLocation(NPC, -38.08, -19.98, 9.11, 5, 8)
end