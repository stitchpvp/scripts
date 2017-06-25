--[[
	Script Name	: SpawnScripts/FrostfangSea/GwenevynII.lua
	Script Purpose	: script to move the boat in Frostfang Sea
	Script Author	: theFoof
	Script Date	: 11.19.13
	Script Notes	:
--]]

function spawn(NPC)
	AddTransportSpawn(NPC)
	SpawnSet(NPC, "activity_state", "64")
	MovementLoopAddLocation(NPC, -191.484, 19.6101, -625.462, 4, 15)
	MovementLoopAddLocation(NPC, 11.4079, 19.3414, -437.875, 4, 15)
end

function respawn(NPC)
	spawn(NPC)
end