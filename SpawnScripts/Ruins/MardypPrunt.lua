--[[
	Script Name	: SpawnScripts/Ruins/MardypPrunt.lua
	Script Purpose	: Mardyp Prunt 
	Script Author	: Scatman
	Script Date	: 2009.07.28
	Script Notes	: 
--]]

local QUEST_1 = 265

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	RandomVoiceOver(NPC, Spawn)
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		PlayFlavor(NPC, "", "Making fang dust harder than Mardyp thought!", "", 1689589577, 4560189, Spawn)
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		RespectEnemies(NPC, Spawn, conversation)
	end
end

function RandomVoiceOver(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1056.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1056.mp3", "", "", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1056.mp3", "", "", 0, 0, Spawn)
	end
end

---------------------------------------------------------------------------------------
--						QUEST 1
---------------------------------------------------------------------------------------

function RespectEnemies(NPC, Spawn, conversation)
	AddConversationOption(conversation, "What?", "dlg_4_1")
	AddConversationOption(conversation, "Whatever.")
	StartConversation(conversation, NPC, Spawn, "Respect enemies!")
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Oh.", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "If enemies strong, respect them!")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "How can I help?", "dlg_4_3")
	StartConversation(conversation, NPC, Spawn, "Orc strong! Not THAT strong, but strong enough for respect! Mardyp talk to friend in Big Bend. Friend tell Mardyp that something in orc tusks make orcs more fierce, more strong! Mardyp killing orcs fine, but crushing fangs to eat takes time. You help Mardyp?")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Ok, I'll collect some fangs.", "dlg_4_4")
	StartConversation(conversation, NPC, Spawn, "Get more fangs while Mardyp crush ones I already have. All orcs have fangs. Mardyp need 20!")
end

function dlg_4_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll go get your fangs.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Good! Mardyp go back to crushing.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "Here you go.", "dlg_6_1")
	else
		AddConversationOption(conversation, "Not et.")
	end
	StartConversation(conversation, NPC, Spawn, "Orc fangs?")
end

function dlg_6_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Well, good luck with that.")
	StartConversation(conversation, NPC, Spawn, "Good! Mardyp very happy! Soon Mardyp make these into soup or drink or something! Unless that too much work, then Mardyp just eat it.")
end


-- JA: new raw data collected

--[[
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1056.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What?", "dlg_4_1")
	AddConversationOption(conversation, "Whatever.")
	StartConversation(conversation, NPC, Spawn, "Respect enemies!")
	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1056.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What?", "dlg_5_1")
		AddConversationOption(conversation, "Whatever.")
		StartConversation(conversation, NPC, Spawn, "Respect enemies!")
	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1056.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Here you go.", "dlg_6_1")
		StartConversation(conversation, NPC, Spawn, "Orc fangs?")
	end

end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Oh.", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "If enemies strong, respect them!")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I help?", "dlg_4_3")
	StartConversation(conversation, NPC, Spawn, "Orc strong! Not THAT strong, but strong enough for respect! Mardyp talk to friend in Big Bend. Friend tell Mardyp that something in orc tusks make orcs more fierce, more strong! Mardyp killing orcs fine, but crushing fangs to eat takes time. You help Mardyp?")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Ok, I'll collect some fangs.", "dlg_4_4")
	StartConversation(conversation, NPC, Spawn, "Get more fangs while Mardyp crush ones I already have. All orcs have fangs. Mardyp need 20!")
end

function dlg_4_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll go get your fangs.", "dlg_4_5")
	StartConversation(conversation, NPC, Spawn, "Good! Mardyp go back to crushing.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Oh.", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "If enemies strong, respect them!")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I help?", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "Orc strong! Not THAT strong, but strong enough for respect! Mardyp talk to friend in Big Bend. Friend tell Mardyp that something in orc tusks make orcs more fierce, more strong! Mardyp killing orcs fine, but crushing fangs to eat takes time. You help Mardyp?")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Ok, I'll collect some fangs.", "dlg_5_4")
	StartConversation(conversation, NPC, Spawn, "Get more fangs while Mardyp crush ones I already have. All orcs have fangs. Mardyp need 20!")
end

function dlg_5_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll go get your fangs.", "dlg_5_5")
	StartConversation(conversation, NPC, Spawn, "Good! Mardyp go back to crushing.")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Well, good luck with that.", "dlg_6_2")
	StartConversation(conversation, NPC, Spawn, "Good! Mardyp very happy! Soon Mardyp make these into soup or drink or something! Unless that too much work, then Mardyp just eat it.")
end
--]]

--[[ raw_conversations
	PlayFlavor(NPC, "", "Making fang dust harder than Mardyp thought!", "", 1689589577, 4560189, Spawn)
--]]

