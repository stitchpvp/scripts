--[[
	Script Name		:	Krelnath.lua
	Script Purpose	:	Waypoint Path for Krelnath.lua
	Script Author	:	Rixan
	Script Date		:	7/23/2018
	Script Notes	:	<special-instructions>
--]]

function spawn(NPC)
  waypoints(NPC)
end

function respawn(NPC)
  spawn(NPC)
end

function hailed(NPC, Spawn)
  local choice = math.random(1, 4)

  if choice == 1 then
	Say(NPC, "Do not challenge my authority, citizen.  In Freeport, the Overlord's word is law!", Spawn)
  elseif choice == 2 then
    Say(NPC, "The Overlord commands me to patrol this area, and so I must.", Spawn)
  elseif choice == 3 then
    Say(NPC, "Do you have business with the Freeport Militia?", Spawn)
  elseif choice == 4 then
    Say(NPC, "All praises to the Overlord.  The Militia protects loyal citizens of Freeport.", Spawn)
  end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -100.24, -25.01, 220.93, 2, 9)
	MovementLoopAddLocation(NPC, -100.24, -25.01, 220.93, 2, 0)
	MovementLoopAddLocation(NPC, -96.3, -25.01, 223.51, 2, 0)
	MovementLoopAddLocation(NPC, -92.77, -25.02, 225.76, 2, 0)
	MovementLoopAddLocation(NPC, -88.51, -25.03, 228.67, 2, 0)
	MovementLoopAddLocation(NPC, -85.59, -25.02, 231.91, 2, 0)
	MovementLoopAddLocation(NPC, -82.75, -25.04, 236.11, 2, 0)
	MovementLoopAddLocation(NPC, -80.53, -25.01, 241.54, 2, 0)
	MovementLoopAddLocation(NPC, -78.66, -25.01, 246.18, 2, 0)
	MovementLoopAddLocation(NPC, -76.68, -25.01, 251.08, 2, 0)
	MovementLoopAddLocation(NPC, -74.95, -25.01, 255.37, 2, 0)
	MovementLoopAddLocation(NPC, -73.46, -25, 259.05, 2, 0)
	MovementLoopAddLocation(NPC, -71.82, -25, 263.11, 2, 0)
	MovementLoopAddLocation(NPC, -68.97, -25, 272.15, 2, 9)
	MovementLoopAddLocation(NPC, -71.82, -25, 263.11, 2, 0)
	MovementLoopAddLocation(NPC, -73.46, -25, 259.05, 2, 0)
	MovementLoopAddLocation(NPC, -74.95, -25.01, 255.37, 2, 0)
	MovementLoopAddLocation(NPC, -76.68, -25.01, 251.08, 2, 0)
	MovementLoopAddLocation(NPC, -78.66, -25.01, 246.18, 2, 0)
	MovementLoopAddLocation(NPC, -80.53, -25.01, 241.54, 2, 0)
	MovementLoopAddLocation(NPC, -82.75, -25.04, 236.11, 2, 0)
	MovementLoopAddLocation(NPC, -85.59, -25.02, 231.91, 2, 0)
	MovementLoopAddLocation(NPC, -88.51, -25.03, 228.67, 2, 0)
	MovementLoopAddLocation(NPC, -92.77, -25.02, 225.76, 2, 0)
	MovementLoopAddLocation(NPC, -96.3, -25.01, 223.51, 2, 0)
	MovementLoopAddLocation(NPC, -100.24, -25.01, 220.93, 2, 0)
	MovementLoopAddLocation(NPC, -100.24, -25.01, 220.93, 2, 9)
end
