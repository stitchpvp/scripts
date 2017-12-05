--[[
	Script Name	: SpawnScripts/GreaterFaydark/BresiyaTuuri.lua
	Script Purpose	: Bresiya Tuuri <Illusionist Trainer>
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
SpawnMob(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "", "Don't let your illusions be shattered!", "", 1689589577, 4560189, Spawn)
end

