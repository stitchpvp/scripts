--[[
	Script Name	: SpawnScripts/Graveyard/ZekvilaDizelk.lua
	Script Purpose	: Zekvila Dizelk 
	Script Author	: scatman
	Script Date	: 2009.07.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QUEST_1 = 237

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	RandomVoice(NPC, Spawn)
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		Say(NPC, "You must not let that fool Ithelz rule the Scale Yard. I need the help of a diligent soldier... what do you need, peasant?", Spawn)
	elseif HasQuest(Spawn, QUEST_2) then
		OnQuest1(NPC, Spawn, conversation)
	else
		NotWhoIAmExpecting(NPC, Spawn, conversation)
	end
end

function RandomVoice(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1027.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1027.mp3", "", "", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1027.mp3", "", "", 0, 0, Spawn)
	end
end

----------------------------------------------------------------------------------------------------------
--					QUEST 1
----------------------------------------------------------------------------------------------------------

function NotWhoIAmExpecting(NPC, Spawn, conversation)
	AddConversationOption(conversation, "Who were you expecting?", "dlg_9_1")
	AddConversationOption(conversation, "None. I'll leave you alone.")
	StartConversation(conversation, NPC, Spawn, "You are not who I was expecting.  What game are you playing with me?")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What task do you need done?", "OfferQuest1")
	AddConversationOption(conversation, "Actually, you're wrong. It's not in my interests to do so. Bye.")
	StartConversation(conversation, NPC, Spawn, "Gyah! How dare you speak to me with a sharp tongue! Who do you think you are, fool? You do not bear the dark instrument; therefore, I've no need for you. Unless ... yes ... yes ... unless my emissary failed at his task. Yes, you shall succeed where the emissary failed. Trust me - it is in your best interest to agree with me.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(NPC, Spawn) == 1 then
		Say(NPC, "You are playing games with me, you deceitful little imp. Go collect the souls or you shall pay dearly.", Spawn)
	else
		AddConversationOption(conversation, "I have collected ten souls from the Undead Knights.", "dlg_1_1")
		AddConversationOption(conversation, "None. I'll leave you alone.")
		StartConversation(conversation, NPC, Spawn, "You are not who I was expecting.  What game are you playing with me?")
	end
end

function dlg_1_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Servant?! Don't ever refer to me... whatever. Bye.")
	StartConversation(conversation, NPC, Spawn, "Give me the crystal. Ah, yes, it's filled.  With these souls, Ithelz's puppet barbarians cannot prevent me from ruling over the district. You served me well, servant. Take this coin as a token of my gratitude.")
end