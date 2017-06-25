--[[
	Script Name	: SpawnScripts/Generic/SpawnGroups.lua
	Script Purpose	: Temporary script to notify team of spawn group work needed
	Script Author	: John Adams
	Script Date	: 2009.06.13
	Script Notes	: Assign this script to spawns needing work
--]]

function spawn(NPC)
	-- SetPlayerProximityFunction(NPC, 30, "InRange", "LeaveRange")
end

function respawn(NPC)
	-- spawn(NPC)
end

function InRange(NPC, Spawn)
	-- hailed(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	-- Say(NPC, "Don't delete me! I'm part of a Spawn Group! ID: " .. GetSpawnGroupID(NPC))
end
