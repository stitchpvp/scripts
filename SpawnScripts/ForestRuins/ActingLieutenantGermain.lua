--[[
	Script Name	: SpawnScripts/ForestRuins/ActingLieutenantGermain.lua
	Script Purpose	: Acting Lieutenant Germain <Qeynos Guard>
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	:
--]]

local QUEST_FROM_POKO = 201
local QUEST_1 = 202
local QUEST_2 = 1

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	if HasQuest(Spawn, QUEST_FROM_POKO) and GetQuestStep(Spawn, QUEST_FROM_POKO) == 3 then
		AddConversationOption(conversation, "I have news for you.", "NewsForYou")
	end

	choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0)
	else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0)
	end

	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
		elseif HasQuest(Spawn, QUEST_2) then
		else
			OnQuest1(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		if GetLevel(Spawn) >= 5 then
			WelcomeCitizen(NPC, Spawn, conversation)
		else
			Say(NPC, "Come back to me once you've gotten a bit stronger.", Spawn)
		end
	end


--[[

	if convo==1 then
		AddConversationOption(conversation, "I do not know yet.", "dlg_0_1")
		StartConversation(conversation, NPC, Spawn, "What does Poko say?")
	end

	if convo==6 then

	end

	if convo==7 then

		StartConversation(conversation, NPC, Spawn, "Any news of Del Varun?")
	end

	if convo==8 then
		AddConversationOption(conversation, "I do not know yet.", "dlg_8_1")
		StartConversation(conversation, NPC, Spawn, "What does Poko say?")
	end

	if convo==16 then
		AddConversationOption(conversation, "I have news for you.", "dlg_16_1")
		StartConversation(conversation, NPC, Spawn, "Welcome, citizen. Please be careful around here.")
	end
--]]
end

----------------------------------------------------------------------------------------------------------
--					QUEST FROM POKO
----------------------------------------------------------------------------------------------------------

function NewsForYou(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_POKO, 3)

	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I was collecting machine parts for Poko and one of the parts I returned seems to be of Freeportian origin.", "dlg_16_2")
	StartConversation(conversation, NPC, Spawn, "What is it, citizen?")
end

function dlg_16_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	if not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "I can help.", "dlg_16_3")
	else
		AddConversationOption(conversation, "You're welcome.")
	end
	StartConversation(conversation, NPC, Spawn, "The bad news just doesn't cease. Citizen, there are obviously multiple things afoot in this place, I thank you for your help even if you're adding to my discomfort.")
end

----------------------------------------------------------------------------------------------------------
--					QUEST 1
----------------------------------------------------------------------------------------------------------

function WelcomeCitizen(NPC, Spawn, conversation)
	AddConversationOption(conversation, "Is it dangerous here?", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "Welcome, citizen. Please be careful around here.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "It sounds very busy here.", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Yes, quite dangerous. We have been getting reports, strange reports, over the past few days. Nobody is sure exactly what is going on, and we don't have the manpower to find out once and for all. I've got scouts but even they can only do so much. We've got so few people that it's hard to take care of all the little things.  Ever since the pirates landed the Concordium has been asking for more and more protection.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can help.", "dlg_1_3")
	AddConversationOption(conversation, "Sorry, I can't help right now.")
	StartConversation(conversation, NPC, Spawn, "More than you know. With dead-end investigations, big threats, little threats, and vague orders from the Qeynos Guard AND the Concordium I'm amazed this place hasn't been put under siege by the hawks yet. I'm sorry for complaining to you. Listen, how would you like to help me out?")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll see what I can find.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Good, that's great news. The first thing I'd like you to do is help me locate a missing scout. Del Varun was assigned to the small pond on the western side of the ruins. He hasn't checked back in and hasn't been spotted in a few days. I'd like you to head that direction and see if you can find him.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 4) or (HasCompletedQuest(Spawn, QUEST_1)) then
		AddConversationOption(conversation, "Yes. I found his satchel.", "dlg_7_1")
	elseif GetQuestStep(Spawn, QUEST_1) == 2 then
		SetStepComplete(Spawn, QUEST_1, 2)
	else
		AddConversationOption(conversation, "Not quite yet.")
	end

	StartConversation(conversation, NPC, Spawn, "Any news of Del Varun?")
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "There is more. In his notes he mentioned some strange, glowing plants north of the pond. I brought back a sample.", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "Only his satchel? I was afraid of this. I wish we had some leads, he may yet be alive.")
end

function dlg_7_2(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 4)
	end

	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Yes, take a look at this leaf.", "dlg_7_3")
	StartConversation(conversation, NPC, Spawn, "Ah, good thinking. Did you see the glowing too? Perhaps it was a transitory thing.")
end

----------------------------------------------------------------------------------------------------------
--					QUEST 2
----------------------------------------------------------------------------------------------------------

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What do you think it is?", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Incredible. Please, take this to Poko Zing over there. Have him analyze it for us.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	--OfferQuest(NPC, Spawn, QUEST_2)
end

function dlg_7_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "All right.", "dlg_7_5")
	StartConversation(conversation, NPC, Spawn, "I don't know, but I'm hoping Poko will be able to tell us.")
end

function dlg_7_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I do not know yet.", "dlg_7_6")
	StartConversation(conversation, NPC, Spawn, "What does Poko say?")
end


