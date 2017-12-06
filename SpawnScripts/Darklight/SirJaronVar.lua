--[[
	Script Name	: SpawnScripts/Darklight/SirJaronVar.lua
	Script Purpose	: Sir Jaron Var <Lucanic Knight>
	Script Author	: John Adams
	Script Date	: 2009.02.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	Say(NPC, "...", Spawn)
end

