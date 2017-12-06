--[[
	Script Name	: SpawnScripts/GreaterFaydark/agrobinpolluter.lua
	Script Purpose	: a grobin polluter
	Script Author	: John Adams
	Script Date	: 2009.03.01
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

	PlayFlavor(NPC, "voiceover/english/exp03_combatvo/goblin_greater_faydark/ft/_exp03/goblin/goblin_greater_faydark_aggro_c809bb68.mp3", "I grow bigger than you!", "", 1365081195, 1786804084, Spawn)
end

