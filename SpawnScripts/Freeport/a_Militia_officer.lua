--[[
	Script Name		:	a_Militia_officer.lua
	Script Purpose	:	Waypoint Path for a_Militia_officer.lua
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
	MovementLoopAddLocation(NPC, -257.06, -55.71, 87.05, 2, 10)
	MovementLoopAddLocation(NPC, -243.35, -55.4, 102.06, 2, 0)
	MovementLoopAddLocation(NPC, -226.8, -55.47, 101.88, 2, 0)
	MovementLoopAddLocation(NPC, -214.17, -56.11, 90.15, 2, 0)
	MovementLoopAddLocation(NPC, -201.08, -56.07, 77.68, 2, 0)
	MovementLoopAddLocation(NPC, -200.67, -56.07, 50.21, 2, 0)
	MovementLoopAddLocation(NPC, -200.22, -56.07, 26.74, 2, 0)
	MovementLoopAddLocation(NPC, -180.8, -55.6, 27.82, 2, 10)
	MovementLoopAddLocation(NPC, -200.22, -56.07, 26.74, 2, 0)
	MovementLoopAddLocation(NPC, -200.67, -56.07, 50.21, 2, 0)
	MovementLoopAddLocation(NPC, -201.08, -56.07, 77.68, 2, 0)
	MovementLoopAddLocation(NPC, -214.17, -56.11, 90.15, 2, 0)
	MovementLoopAddLocation(NPC, -226.8, -55.47, 101.88, 2, 0)
	MovementLoopAddLocation(NPC, -243.35, -55.4, 102.06, 2, 0)
	MovementLoopAddLocation(NPC, -257.06, -55.71, 87.05, 2, 10)
end