--[[
	Script Name		:	Durakan.lua
	Script Purpose	:	Waypoint Path for Durakan.lua
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
	MovementLoopAddLocation(NPC, -87.5, -23.8, 116.02, 2, 9)
	MovementLoopAddLocation(NPC, -88.31, -23.8, 118.98, 2, 0)
	MovementLoopAddLocation(NPC, -89.36, -23.8, 122.84, 2, 0)
	MovementLoopAddLocation(NPC, -90.51, -23.8, 127.24, 2, 0)
	MovementLoopAddLocation(NPC, -91.47, -23.8, 131.74, 2, 0)
	MovementLoopAddLocation(NPC, -92.41, -23.8, 136.41, 2, 0)
	MovementLoopAddLocation(NPC, -93.5, -23.88, 141.05, 2, 0)
	MovementLoopAddLocation(NPC, -94.71, -24.5, 146.06, 2, 0)
	MovementLoopAddLocation(NPC, -95.83, -24.95, 150.3, 2, 0)
	MovementLoopAddLocation(NPC, -97.09, -24.95, 154.95, 2, 0)
	MovementLoopAddLocation(NPC, -98.33, -24.95, 159.53, 2, 0)
	MovementLoopAddLocation(NPC, -99.51, -24.95, 163.87, 2, 0)
	MovementLoopAddLocation(NPC, -100.77, -24.95, 168.68, 2, 0)
	MovementLoopAddLocation(NPC, -101.82, -24.95, 172.9, 2, 0)
	MovementLoopAddLocation(NPC, -102.96, -24.95, 177.5, 2, 0)
	MovementLoopAddLocation(NPC, -104.66, -24.96, 184.32, 2, 9)
	MovementLoopAddLocation(NPC, -102.96, -24.95, 177.5, 2, 0)
	MovementLoopAddLocation(NPC, -101.82, -24.95, 172.9, 2, 0)
	MovementLoopAddLocation(NPC, -100.77, -24.95, 168.68, 2, 0)
	MovementLoopAddLocation(NPC, -99.51, -24.95, 163.87, 2, 0)
	MovementLoopAddLocation(NPC, -98.33, -24.95, 159.53, 2, 0)
	MovementLoopAddLocation(NPC, -97.09, -24.95, 154.95, 2, 0)
	MovementLoopAddLocation(NPC, -95.83, -24.95, 150.3, 2, 0)
	MovementLoopAddLocation(NPC, -94.71, -24.5, 146.06, 2, 0)
	MovementLoopAddLocation(NPC, -93.5, -23.88, 141.05, 2, 0)
	MovementLoopAddLocation(NPC, -92.41, -23.8, 136.41, 2, 0)
	MovementLoopAddLocation(NPC, -91.47, -23.8, 131.74, 2, 0)
	MovementLoopAddLocation(NPC, -90.51, -23.8, 127.24, 2, 0)
	MovementLoopAddLocation(NPC, -89.36, -23.8, 122.84, 2, 0)
	MovementLoopAddLocation(NPC, -88.31, -23.8, 118.98, 2, 0)
	MovementLoopAddLocation(NPC, -87.5, -23.8, 116.02, 2, 9)
end