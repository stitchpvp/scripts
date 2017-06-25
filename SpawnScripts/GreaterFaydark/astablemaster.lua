--[[
	Script Name	: SpawnScripts/GreaterFaydark/astablemaster.lua
	Script Purpose	: a stable master 
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
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm not sure, what routes are out there?", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "Greetings, where would you like to travel to?")
	if convo==96 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm not sure, what routes are out there?", "dlg_96_1")
		StartConversation(conversation, NPC, Spawn, "Greetings, where would you like to travel to?")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "That makes sense.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Well, before I can send you off you must discover the routes for yourself. There are stations near the Old Kelethin Lift, the Butcherblock Mountains and Crushbone Keep. Once you map the location of each you can borrow one of our horses. We have to be sure you won't get lost out there.")
end

function dlg_96_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "That makes sense.", "dlg_96_2")
	StartConversation(conversation, NPC, Spawn, "Well, before I can send you off you must discover the routes for yourself. There are stations near the Old Kelethin Lift, the Butcherblock Mountains and Crushbone Keep. Once you map the location of each you can borrow one of our horses. We have to be sure you won't get lost out there.")
end

