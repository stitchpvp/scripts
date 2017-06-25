--[[
	Script Name	: SpawnScripts/Darklight/DirzdiaTZauvirr.lua
	Script Purpose	: Dirzdia T'Zauvirr 
	Script Author	: John Adams
	Script Date	: 2009.01.31
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QUEST_DELIVERY_FROM_FILEYL = 83
local QUEST_1 = 101
local QUEST_2 = 102
local QUEST_3 = 103
local QUEST_4 = 104

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
	ProvidesQuest(NPC, QUEST_4)
end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_DELIVERY_FROM_FILEYL) and GetQuestStep(Spawn, QUEST_DELIVERY_FROM_FILEYL) == 1 then
		AddConversationOption(conversation, "Hi. I've a delivery from Fileyl for you.", "dlg_24_1")
	end
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
				elseif HasQuest(Spawn, QUEST_4) then
				else
					DidYouGetThem(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				DidYouGetThem(NPC, Spawn, conversation)
			else
				DoYouHaveThem(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			DoYouHaveThem(NPC, Spawn, conversation)
		else
			HaveYouGotTheRazormaw(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		HaveYouGotTheRazormaw(NPC, Spawn, conversation)
	else
		Hello(NPC, Spawn, conversation)
	end
end

---------------------------------------------------------------------------------------
--			QUEST_DELIVERY_FROM_FILEYL
---------------------------------------------------------------------------------------

function dlg_24_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_DELIVERY_FROM_FILEYL, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery001.mp3", "", "", 1749958115, 2883042757, Spawn)
	
	if not HasCompletedQuest(Spawn, QUEST_1) and not HasQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "All right. Goodbye.", "dlg_24_2")
	else
		AddConversationOption(conversation, "All right. Goodbye.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Perfect! Thanks! Just put it on the ground there.")
end

------------------------------------------------------------------------------------------
--					QUEST 1
------------------------------------------------------------------------------------------

function Hello(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery000.mp3", "", "", 169576251, 1164193707, Spawn)
	AddConversationOption(conversation, "Hi.", "Hi")
	StartConversation(conversation, NPC, Spawn, "Hello.")
end

function Hi(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Hello", "Hello2")
	StartConversation(conversation, NPC, Spawn, "Hi.")
end

function Hello2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery000.mp3", "", "", 169576251, 1164193707, Spawn)
	AddConversationOption(conversation, "... goodbye.", "dlg_24_2")
	StartConversation(conversation, NPC, Spawn, "Hello.")
end

function dlg_24_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery002.mp3", "", "", 2799282957, 2320910908, Spawn)
	AddConversationOption(conversation, "What?", "dlg_24_3")
	StartConversation(conversation, NPC, Spawn, "Hey, wait!")
end

function dlg_24_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia003.mp3", "", "", 1931781458, 1316667418, Spawn)
	AddConversationOption(conversation, "Why do you ask?", "dlg_24_4")
	StartConversation(conversation, NPC, Spawn, "How good are you at killing?")
end

function dlg_24_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia004.mp3", "", "", 999431120, 423593637, Spawn)
	AddConversationOption(conversation, "What do you want me to do?", "dlg_24_5")
	StartConversation(conversation, NPC, Spawn, "Fishing is getting more and more difficult as the razormaw in this river reach maturity. They break my lines, steal my lures, and eat all the fish before I have a chance to catch them! But they sure do taste great when smoked!")
end

function dlg_24_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia005.mp3", "", "", 3936904424, 544099891, Spawn)
	AddConversationOption(conversation, "All right, I'll help you.", "OfferQuest1")
	AddConversationOption(conversation, "Find someone else.")
	StartConversation(conversation, NPC, Spawn, "Kill them for me so I can fish in peace... and so I can have a tasty dinner. What do you say? I'll compensate you for your time, of course.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function HaveYouGotTheRazormaw(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia007.mp3", "", "", 1448690893, 2588880650, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) then
		AddConversationOption(conversation, "I do, here you go.", "dlg_0_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Have you got the razormaw?")
end

function dlg_0_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia008.mp3", "", "", 2217132870, 3346276431, Spawn)
	AddConversationOption(conversation, "I'm " .. GetName(Spawn) .. ".", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Great! I thought the waters seemed a bit calmer. I'm Dirzdia, by the way.")
end

-------------------------------------------------------------------------------------------------
--					QUEST 2
-------------------------------------------------------------------------------------------------

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia009.mp3", "", "", 389446448, 2794640706, Spawn)
	AddConversationOption(conversation, "No.", "dlg_0_3")
	AddConversationOption(conversation, "Sometimes.", "dlg_0_3")
	AddConversationOption(conversation, "All the time.", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "Oh I'll never remember that. Tell me, do you fish much?")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia010.mp3", "", "", 2956956838, 3113219938, Spawn)
	AddConversationOption(conversation, "What kind of help?", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "Well the waters here are pretty good for fishing. How would you like to help me reel them in?")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia011.mp3", "", "", 3261932029, 3599840953, Spawn)
	AddConversationOption(conversation, "Sure, I'll help.", "OfferQuest2")
	AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "Just help me catch them. Right now I'm trying to catch searing trout. They swim around in the Lower Tendril River. What do you say?")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function DoYouHaveThem(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia013.mp3", "", "", 4057665445, 4206402151, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_2) and not HasCompletedQuest(Spawn, QUEST_3)) or (HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 2) then
		AddConversationOption(conversation, "I do. Here you are.", "dlg_10_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Do you have them?")
end

function dlg_10_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_2) then
		SetStepComplete(Spawn, QUEST_2, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia014.mp3", "", "", 3630010163, 822378916, Spawn)
	AddConversationOption(conversation, "What kind of fish do you need?", "dlg_10_2")
	StartConversation(conversation, NPC, Spawn, "Great! I hope you enjoyed the fishing here, I certainly do. If you'd like, you could help me catch some more fish.")
end

----------------------------------------------------------------------------------------------------------------
--					QUEST 3
----------------------------------------------------------------------------------------------------------------

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia015.mp3", "", "", 2001952195, 1089349401, Spawn)
	AddConversationOption(conversation, "I can fish them up.", "OfferQuest3")
	AddConversationOption(conversation, "I'd prefer not to.")
	StartConversation(conversation, NPC, Spawn, "Seared char! I know, their name is repetitive! They swim in the Searing Tendril, before it splits off into the Lower Tendril River. If you could fish me up some, that would be great!")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function DidYouGetThem(NPC, Spawn, conversation)
	if (HasCompletedQuest(Spawn, QUEST_3) and not HasCompletedQuest(Spawn, QUEST_4)) or (HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) == 2) then
		AddConversationOption(conversation, "I sure did.", "YoureGreat")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you get them?")
end

function YoureGreat(NPC, Spawn)
	if HasQuest(Spawn, QUEST_3) then
		SetStepComplete(Spawn, QUEST_3, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Smolderfin?", "HesAReclusiveOne")
	StartConversation(conversation, NPC, Spawn, "You're great! A much better fisher than I am, maybe that's why I enjoy it though, I can always get better. I bet you could catch some Smolderfin!")
end

--------------------------------------------------------------------------------------------------------------------
--						QUEST 4
--------------------------------------------------------------------------------------------------------------------

function HesAReclusiveOne(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Maybe I could fish him up for you.", "MaybeIfYouWereAGaint")
	StartConversation(conversation, NPC, Spawn, "He's a reclusive one, swims around up in Smoldering Lake. I hooked him once, but he took my pole down with him. Eventually it was washed ashore and I got it back, but my favorite lure was gone.")
end

function MaybeIfYouWereAGaint(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Where can I find him?", "HesInSmolderingLake")
	StartConversation(conversation, NPC, Spawn, "Maybe if you were a giant. Smolderfin is huge. But if you want to try, I won't stop you, especially if it means I might get my lure back. I'll just tell you to be careful.")
end

function HesInSmolderingLake(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Ok, I'm up for the challenge.", "OfferQuest4")
	AddConversationOption(conversation, "I don't think I'm interested.")
	StartConversation(conversation, NPC, Spawn, "Like I said, he's in Smoldering Lake. But it's rare that he comes out. He likes to eat the smoldering trout, though. If you catch enough of them, and drop them in the lake, all bloody and squirming, I bet that will drag him out.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Say(NPC, "Convo not collected yet and item inspects need to work.", Spawn)
	--OfferQuest(NPC, Spawn, QUEST_4)
end