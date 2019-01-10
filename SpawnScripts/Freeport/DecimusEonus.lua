--[[
	Script Name		:	DecimusEonus.lua
	Script Purpose	:	Waypoint Path for DecimusEonus.lua
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
	MovementLoopAddLocation(NPC, -154.25, -35.2, 169.36, 2, 9)
	MovementLoopAddLocation(NPC, -154.02, -35.2, 169.4, 2, 0)
	MovementLoopAddLocation(NPC, -152.2, -35.2, 169.73, 2, 0)
	MovementLoopAddLocation(NPC, -150.25, -35.2, 170.08, 2, 0)
	MovementLoopAddLocation(NPC, -148.07, -35.2, 170.75, 2, 0)
	MovementLoopAddLocation(NPC, -146.11, -35.2, 171.86, 2, 0)
	MovementLoopAddLocation(NPC, -144.41, -35.2, 173.39, 2, 0)
	MovementLoopAddLocation(NPC, -143.66, -35.2, 175.51, 2, 0)
	MovementLoopAddLocation(NPC, -143.54, -35.2, 177.91, 2, 0)
	MovementLoopAddLocation(NPC, -143.53, -35.2, 180.28, 2, 0)
	MovementLoopAddLocation(NPC, -144.54, -35.31, 190.48, 2, 0)
	MovementLoopAddLocation(NPC, -145.26, -35.15, 195.77, 2, 0)
	MovementLoopAddLocation(NPC, -146.49, -31.82, 203.11, 2, 0)
	MovementLoopAddLocation(NPC, -147.56, -30.53, 207.88, 2, 0)
	MovementLoopAddLocation(NPC, -148.81, -30.43, 213, 2, 0)
	MovementLoopAddLocation(NPC, -149.93, -30.36, 216.83, 2, 0)
	MovementLoopAddLocation(NPC, -151.3, -30.33, 220.35, 2, 0)
	MovementLoopAddLocation(NPC, -152.81, -30.31, 223.36, 2, 0)
	MovementLoopAddLocation(NPC, -154.54, -30.28, 226.82, 2, 0)
	MovementLoopAddLocation(NPC, -156.79, -30.25, 231.32, 2, 0)
	MovementLoopAddLocation(NPC, -158.37, -30.24, 235.02, 2, 0)
	MovementLoopAddLocation(NPC, -158.95, -30.24, 239.34, 2, 0)
	MovementLoopAddLocation(NPC, -159.19, -30.24, 243.82, 2, 0)
	MovementLoopAddLocation(NPC, -159.3, -30.24, 246.71, 2, 0)
	MovementLoopAddLocation(NPC, -159.45, -30.24, 249.58, 2, 0)
	MovementLoopAddLocation(NPC, -160.29, -30.24, 253.12, 2, 9)
	MovementLoopAddLocation(NPC, -157.99, -30.24, 251.49, 2, 0)
	MovementLoopAddLocation(NPC, -156.14, -30.24, 250.18, 2, 0)
	MovementLoopAddLocation(NPC, -153.62, -30.24, 248.41, 2, 0)
	MovementLoopAddLocation(NPC, -150.94, -30.24, 246.51, 2, 0)
	MovementLoopAddLocation(NPC, -147.88, -30.24, 244.24, 2, 0)
	MovementLoopAddLocation(NPC, -145.78, -30.24, 241.56, 2, 0)
	MovementLoopAddLocation(NPC, -144.75, -30.24, 238.71, 2, 0)
	MovementLoopAddLocation(NPC, -145.43, -30.25, 235.5, 2, 0)
	MovementLoopAddLocation(NPC, -146.9, -30.26, 232.17, 2, 0)
	MovementLoopAddLocation(NPC, -148.7, -30.27, 228.59, 2, 0)
	MovementLoopAddLocation(NPC, -150.07, -30.3, 225.22, 2, 0)
	MovementLoopAddLocation(NPC, -150.41, -30.32, 221.84, 2, 0)
	MovementLoopAddLocation(NPC, -150.1, -30.35, 218.25, 2, 0)
	MovementLoopAddLocation(NPC, -148.89, -30.46, 211.3, 2, 0)
	MovementLoopAddLocation(NPC, -148.04, -30.58, 206.54, 2, 0)
	MovementLoopAddLocation(NPC, -146.21, -34.26, 197.7, 2, 0)
	MovementLoopAddLocation(NPC, -145.08, -35.34, 191.94, 2, 0)
	MovementLoopAddLocation(NPC, -143.99, -35.24, 186.07, 2, 0)
	MovementLoopAddLocation(NPC, -143.35, -35.2, 182.59, 2, 0)
	MovementLoopAddLocation(NPC, -142.7, -35.2, 179.08, 2, 0)
	MovementLoopAddLocation(NPC, -142.53, -35.2, 175.94, 2, 0)
	MovementLoopAddLocation(NPC, -143.46, -35.2, 172.78, 2, 0)
	MovementLoopAddLocation(NPC, -146.5, -35.2, 169.57, 2, 0)
	MovementLoopAddLocation(NPC, -149.53, -35.2, 169.72, 2, 0)
	MovementLoopAddLocation(NPC, -154.19, -35.2, 169.55, 2, 9)
end
