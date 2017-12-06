--[[
	Script Name	: SpawnScripts/Oakmyst/FulkoirHaggleton.lua
	Script Purpose	: Fulkoir Haggleton
	Script Author	: John Adams
	Script Date	: 2009.05.04
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

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fulkoir_haggleton/qey_adv01_oakmyst_revamp/qst_fulkoir_gone_ff0a041c.mp3", "I'd have to be five times as crazy as I already am to stay here!", "", 2327597972, 1883003048, Spawn)
end

