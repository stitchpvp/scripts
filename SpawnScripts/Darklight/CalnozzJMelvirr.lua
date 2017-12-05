--[[
	Script Name	: SpawnScripts/Darklight/CalnozzJMelvirr.lua
	Script Purpose	: Calnozz J'Melvirr
	Script Author	: John Adams
	Script Date	: 2009.01.31
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local DrawUponWellsprings = 155
local StunningRevelation = 156

function spawn(NPC)
	ProvidesQuest(NPC, DrawUponWellsprings)
	ProvidesQuest(NPC, StunningRevelation)
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
	local conversation = CreateConversation()

	if not HasQuest(Spawn, DrawUponWellsprings) and not HasCompletedQuest(Spawn, DrawUponWellsprings) and GetQuestStep(Spawn, DrawUponWellsprings) < 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1048.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You heard the guards speaking of me?", "Quest_DrawUponWellsprings_01A")
		AddConversationOption(conversation, "I am good.", "Quest_DrawUponWellsprings_01B")
		StartConversation(conversation, NPC, Spawn, "" .. GetName(Spawn) .. "? I've heard the guards speaking of you. They have been quite impressed by your feats.")
	elseif HasQuest(Spawn, DrawUponWellsprings) and not HasCompletedQuest(Spawn, DrawUponWellsprings) then
		PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz008.mp3", "", "", 1789620757, 3499917810, Spawn)
			if GetQuestStep(Spawn, DrawUponWellsprings) == 1 and GetTempVariable(Spawn, "cub") ~= nil then
				AddConversationOption(conversation, "I have a bear cub.", "Quest_DrawUponWellsprings_05")
				AddConversationOption(conversation, "All right.")
			else
				AddConversationOption(conversation, "All right.")
			end
		StartConversation(conversation, NPC, Spawn, "Bring me the cubs and then we'll talk about payment.")
	elseif HasCompletedQuest(Spawn, DrawUponWellsprings) and not HasQuest(Spawn, StunningRevelation) and not HasCompletedQuest(Spawn, StunningRevelation) then
		PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz008_progress.mp3", "", "", 1983465757, 3955037985, Spawn)
		AddConversationOption(conversation, "Yes.", "Quest_DrawUponWellsprings_05")
		StartConversation(conversation, NPC, Spawn, "Was that all three?")
	else
		Say(NPC, "This is suppose to be the end of the quest line dialog. Are you finished whit all quest? If so then change this to what it is suppose to be you lazy Cynnar")
	end
end

--------------------------------------------------------------------------------------
--			To Draw Upon Wellsprings
--------------------------------------------------------------------------------------

function Quest_DrawUponWellsprings_01A(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Throw in some coin and we have a deal.", "Quest_DrawUponWellsprings_02")
	AddConversationOption(conversation, "I would like to hear more.", "Quest_DrawUponWellsprings_02")
	StartConversation(conversation, NPC, Spawn, "Indeed I have, and it impressed me as well. Such skills could be put to work around here.")
end

function Quest_DrawUponWellsprings_01B(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Throw in some coin and we have a deal.", "Quest_DrawUponWellsprings_02")
	AddConversationOption(conversation, "I would like to hear more.", "Quest_DrawUponWellsprings_02")
	StartConversation(conversation, NPC, Spawn, "I hold no doubt of that. Such skills could be put to work around here.")
end

function Quest_DrawUponWellsprings_02(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	AddConversationOption(conversation, "Where do I come in?", "Quest_DrawUponWellsprings_03")
	StartConversation(conversation, NPC, Spawn, "Certainly! I am responsible for ensuring the Dread Guard remain an unequaled fighting force and are prepared for an eventual march on the Thexian invaders. They say all armies must be bred, fed and led. Well, I've got the last two categories covered.")
end

function Quest_DrawUponWellsprings_03(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	AddConversationOption(conversation, "That would be impressive.", "Quest_DrawUponWellsprings_04")
	StartConversation(conversation, NPC, Spawn, "I have turned my attention to the local fauna of this forest to expand our fighting regiments.  Imagine a full platoon of Dread Guard Dragoons charging their enemy atop fearsome bears!")
end

function Quest_DrawUponWellsprings_04(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "All right, I can do this.", "QuestOffer_DrawUponWellsprings")
	AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "For this plan to come to fruition, we must capture several cubs and domesticate them at an early age before their savage nature makes them untamable. I want you to find some cubs and bring them back to me.")
end

function QuestOffer_DrawUponWellsprings(NPC, Spawn)
	OfferQuest(NPC, Spawn, DrawUponWellsprings)
end

function Quest_DrawUponWellsprings_05(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	local cub = GetTempVariable(Spawn, "cub")
	Say(NPC, cub)
	Despawn(cub)
	AddStepProgress(Spawn, 155, 1, 1)
	SetTempVariable(Spawn, "cub", nil)

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz009.mp3", "", "", 1819294557, 1460011625, Spawn)
	if GetQuestStep(Spawn, DrawUponWellsprings) == 2 then
		AddConversationOption(conversation, "That's three cubs.", "Quest_StunningRevelation")
		AddConversationOption(conversation, "All right.")
		StartConversation(conversation, NPC, Spawn, "Nice work!")
	else
		AddConversationOption(conversation, "All right.")
		StartConversation(conversation, NPC, Spawn, "Nice work!")
	end
end

--------------------------------------------------------------------------------------
--			Stunning Revelation
--------------------------------------------------------------------------------------

function Quest_StunningRevelation(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	SetStepComplete(Spawn, DrawUponWellsprings, 2)

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz010.mp3", "", "", 3144240243, 3441965982, Spawn)
	AddConversationOption(conversation, "Yes.", "Quest_StunningRevelation_01")
	AddConversationOption(conversation, "Not right now, Calnozz.")
	StartConversation(conversation, NPC, Spawn, "That it is. Very nice. I do believe our partnership will work out fine. Do you wish to continue working?")
end

function Quest_StunningRevelation_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What's that?", "Quest_StunningRevelation_02")
	StartConversation(conversation, NPC, Spawn, "As an opportunist I am always seeking new methods for disposing of our enemies. In recent months I believe I've discovered a new way to address the constant threat of undead corpses who stalk these woods.")
end

function Quest_StunningRevelation_02(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz004.mp3", "", "", 1724396442, 329779287, Spawn)
	AddConversationOption(conversation, "Where should I look for these mushrooms?", "dlg_4_4")
	AddConversationOption(conversation, "Not a chance, Calnozz.")
	StartConversation(conversation, NPC, Spawn, "I've found a particular mushroom, which, when ground into a fine powder, causes a topical paralysis on undead test subjects. I'm close to perfecting the mixture; however, I've run out of stunspore mushroom caps. Would you be willing to harvest some more for me?")
end

function dlg_4_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz005.mp3", "", "", 833398241, 239346045, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_4_5")
	StartConversation(conversation, NPC, Spawn, "Good to hear. One delicacy I helped introduce to Neriak is called gerael. What it is, is the meat from bear cubs, which everyone knows. What most laymen don't know--and most collectors fail to capitalize on--is the activity level of the cubs from which the meat is derived.")
end

function dlg_4_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz006.mp3", "", "", 37698119, 695494273, Spawn)
	AddConversationOption(conversation, "All right, I can do this.", "dlg_4_6")
	AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "I keep my cubs chained up to limit their movement. This retards the growth of tough muscle fiber and makes the flesh nice and tender. It is because of this that restaurants pay a premium for my meat. What I'd like from you, is to go find some cubs and bring them back to me.")
end

function dlg_4_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz007.mp3", "", "", 1447659069, 1085130442, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_4_7")
	StartConversation(conversation, NPC, Spawn, "Excellent. I will be here waiting for you to bring the cubs back. Here is the leash.")
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz020.mp3", "", "", 3550554639, 273920671, Spawn)
	AddConversationOption(conversation, "Thank you.", "dlg_12_2")
	StartConversation(conversation, NPC, Spawn, "Nice work, .. GetName(Spawn) .. . Nice work indeed. These will do nicely. Here is your payment.")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz021.mp3", "", "", 1698965568, 399908880, Spawn)
	AddConversationOption(conversation, "Oh?", "dlg_12_3")
	AddConversationOption(conversation, "Oh, I am quite aware of that. But your concern is appreciated.")
	StartConversation(conversation, NPC, Spawn, "You seem to play the game well, assuming your attitude is a mask. If it is not, make it one. Do not be sincere within Neriak, .. GetName(Spawn) .. . That is a mistake you will not be allowed to repeat.")
end

function dlg_12_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz022.mp3", "", "", 1513724159, 2767202576, Spawn)
	AddConversationOption(conversation, "Funny for YOU to say that to me.", "dlg_12_4")
	StartConversation(conversation, NPC, Spawn, "Put on the mask, be friendly, that is what they expect and how they interact with each other. But trust no one, and use everyone you can, lest you be used yourself.")
end

function dlg_12_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz023.mp3", "", "", 2872411134, 1698258241, Spawn)
	AddConversationOption(conversation, "I see. Well, thank you for the advice. Do you have any more work?", "dlg_12_5")
	StartConversation(conversation, NPC, Spawn, "Fair enough, you may break off our dealings at any time. Though it is more acceptable to avoid the political mess that is Neriak once you leave the city itself.")
end

function dlg_12_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz025.mp3", "", "", 3007549595, 1246810731, Spawn)
	AddConversationOption(conversation, "I'm sure I can figure it out.", "dlg_12_6")
	AddConversationOption(conversation, "Not really, but I'll try.")
	AddConversationOption(conversation, "Know how to fish? I'm a fishing prodigy!")
	AddConversationOption(conversation, "Fishing? Goodbye.")
	StartConversation(conversation, NPC, Spawn, "In fact I do. I have a client who is requesting Smoldering trout. They are the resilient fish that swim about in Smoldering Lake, which is found to the northwest. I hope you know how to fish.")
end

function dlg_12_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz026.mp3", "", "", 466576522, 3228815072, Spawn)
	AddConversationOption(conversation, "I'll return with them.")
	StartConversation(conversation, NPC, Spawn, "Well, so long as I get the fish!")
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz001.mp3", "", "", 1345648558, 587665125, Spawn)
	AddConversationOption(conversation, "Well, nice to meet you.", "dlg_13_2")
	StartConversation(conversation, NPC, Spawn, "Indeed I did, though that is of little importance. I am Calnozz J'Melvirr.")
end

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz003.mp3", "", "", 1237619057, 3188401533, Spawn)
	AddConversationOption(conversation, "What did you have in mind?", "dlg_13_3")
	StartConversation(conversation, NPC, Spawn, "No doubt. You may not have heard of me, but I am one of the top suppliers to most of the higher class restaurants in Neriak. I've worked in the field for quite some time. I've even discovered a number of new ingredients for the restaurants to use. In my spare time, I cook, naturally. For now, though, I am out here. Collecting. Tell me, Zuzoo, would a short term business partnership interest you?")
end

function dlg_13_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz004.mp3", "", "", 1724396442, 329779287, Spawn)
	AddConversationOption(conversation, "I'm listening.", "dlg_13_4")
	StartConversation(conversation, NPC, Spawn, "You get things done, and I have things that need doing. I will pay you for your work.")
end

function dlg_13_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz005.mp3", "", "", 833398241, 239346045, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_13_5")
	StartConversation(conversation, NPC, Spawn, "Good to hear. One delicacy I helped introduce to Neriak is called gerael. What it is, is the meat from bear cubs, which everyone knows. What most laymen don't know--and most collectors fail to capitalize on--is the activity level of the cubs from which the meat is derived.")
end

function dlg_13_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz006.mp3", "", "", 37698119, 695494273, Spawn)
	AddConversationOption(conversation, "All right, I can do this.", "dlg_13_6")
	AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "I keep my cubs chained up to limit their movement. This retards the growth of tough muscle fiber and makes the flesh nice and tender. It is because of this that restaurants pay a premium for my meat. What I'd like from you, is to go find some cubs and bring them back to me.")
end

function dlg_13_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz007.mp3", "", "", 1447659069, 1085130442, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_13_7")
	StartConversation(conversation, NPC, Spawn, "Excellent. I will be here waiting for you to bring the cubs back. Here is the leash.")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz009.mp3", "", "", 1819294557, 1460011625, Spawn)
	AddConversationOption(conversation, "That's three cubs.", "dlg_14_2")
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Nice work!")
end

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz010.mp3", "", "", 3144240243, 3441965982, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_14_3")
	StartConversation(conversation, NPC, Spawn, "That it is. Very nice. I do believe our partnership will work out fine. Do you wish to continue working?")
end

function dlg_14_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz011.mp3", "", "", 2621978220, 49747204, Spawn)
	AddConversationOption(conversation, "What's that?", "dlg_14_4")
	StartConversation(conversation, NPC, Spawn, "Good. I have my own garden in Neriak. Though, most often I am not the one caring for it, so really I wouldn't say the garden is MINE so much. But I do own it. One thing that helps my fruits and vegetables ripen is the right fertilizer. Most folks tend to use land mammal dung as fertilizer, but in my wanderings out here I've stumbled onto a little secret.")
end

function dlg_14_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz012.mp3", "", "", 514050601, 1202589149, Spawn)
	AddConversationOption(conversation, "All right, I'll collect some.", "dlg_14_5")
	AddConversationOption(conversation, "Not a chance, Calnozz.")
	StartConversation(conversation, NPC, Spawn, "Screecher dung. You would be amazed at how well this stuff helps plants grow. The screechers are just west of T'Vatar Post, and their droppings can be found all around that area.")
end

function dlg_14_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz013.mp3", "", "", 2963845770, 48104833, Spawn)
	AddConversationOption(conversation, "Yeah, yeah. I'll be back.", "dlg_14_6")
	StartConversation(conversation, NPC, Spawn, "It's a dirty job, but someone who isn't me has to do it.")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz015.mp3", "", "", 1272266981, 2604142858, Spawn)
	AddConversationOption(conversation, "Interesting.", "dlg_15_2")
	StartConversation(conversation, NPC, Spawn, "Nice work, .. GetName(Spawn) .. . It may seem worthless now, but with a little preparation this can turn a few seeds into platinum.")
end

function dlg_15_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz016.mp3", "", "", 636649601, 977260067, Spawn)
	AddConversationOption(conversation, "What task?", "dlg_15_3")
	StartConversation(conversation, NPC, Spawn, "Interesting in a 'money making' sort of way, yes. Whatever it takes to meet the discerning palate of the Neriak elite, I always say. On that note, I have another task for you.")
end

function dlg_15_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz017.mp3", "", "", 1678813904, 3793532984, Spawn)
	AddConversationOption(conversation, "I can collect them.", "dlg_15_4")
	AddConversationOption(conversation, "Good luck with that.")
	StartConversation(conversation, NPC, Spawn, "Baby snake is a delicacy in Neriak. Along the banks of the Searing Tendril you will find serpents. Some, when slain, will spew forth baby snakes--a beautiful way to come into the world, no doubt. These baby snakes are what I require.")
end

function dlg_15_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz018.mp3", "", "", 3304982869, 1880170968, Spawn)
	AddConversationOption(conversation, "I'll try to remember.", "dlg_15_5")
	StartConversation(conversation, NPC, Spawn, "They sell for quite a bit, so try not to slice up the babies too much.")
end

function dlg_25_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz009.mp3", "", "", 1819294557, 1460011625, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_25_2")
	StartConversation(conversation, NPC, Spawn, "Nice work!")
end

function dlg_26_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz009.mp3", "", "", 1819294557, 1460011625, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_26_2")
	StartConversation(conversation, NPC, Spawn, "Nice work!")
end

function dlg_27_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz009.mp3", "", "", 1819294557, 1460011625, Spawn)
	AddConversationOption(conversation, "That's three cubs.", "dlg_27_2")
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Nice work!")
end

function dlg_27_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz010.mp3", "", "", 3144240243, 3441965982, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_27_3")
	StartConversation(conversation, NPC, Spawn, "That it is. Very nice. I do believe our partnership will work out fine. Do you wish to continue working?")
end

function dlg_27_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz011.mp3", "", "", 2621978220, 49747204, Spawn)
	AddConversationOption(conversation, "What's that?", "dlg_27_4")
	StartConversation(conversation, NPC, Spawn, "Good. I have my own garden in Neriak. Though, most often I am not the one caring for it, so really I wouldn't say the garden is MINE so much. But I do own it. One thing that helps my fruits and vegetables ripen is the right fertilizer. Most folks tend to use land mammal dung as fertilizer, but in my wanderings out here I've stumbled onto a little secret.")
end

function dlg_27_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz012.mp3", "", "", 514050601, 1202589149, Spawn)
	AddConversationOption(conversation, "All right, I'll collect some.", "dlg_27_5")
	AddConversationOption(conversation, "Not a chance, Calnozz.")
	StartConversation(conversation, NPC, Spawn, "Screecher dung. You would be amazed at how well this stuff helps plants grow. The screechers are just west of T'Vatar Post, and their droppings can be found all around that area.")
end

function dlg_27_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz013.mp3", "", "", 2963845770, 48104833, Spawn)
	AddConversationOption(conversation, "Yeah, yeah. I'll be back.", "dlg_27_6")
	StartConversation(conversation, NPC, Spawn, "It's a dirty job, but someone who isn't me has to do it.")
end

function dlg_29_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz015.mp3", "", "", 1272266981, 2604142858, Spawn)
	AddConversationOption(conversation, "Interesting.", "dlg_29_2")
	StartConversation(conversation, NPC, Spawn, "Nice work, Zuzoo. It may seem worthless now, but with a little preparation this can turn a few seeds into platinum.")
end

function dlg_29_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz016.mp3", "", "", 636649601, 977260067, Spawn)
	AddConversationOption(conversation, "What task?", "dlg_29_3")
	StartConversation(conversation, NPC, Spawn, "Interesting in a 'money making' sort of way, yes. Whatever it takes to meet the discerning palate of the Neriak elite, I always say. On that note, I have another task for you.")
end

function dlg_29_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz017.mp3", "", "", 1678813904, 3793532984, Spawn)
	AddConversationOption(conversation, "I can collect them.", "dlg_29_4")
	AddConversationOption(conversation, "Good luck with that.")
	StartConversation(conversation, NPC, Spawn, "Baby snake is a delicacy in Neriak. Along the banks of the Searing Tendril you will find serpents. Some, when slain, will spew forth baby snakes--a beautiful way to come into the world, no doubt. These baby snakes are what I require.")
end

function dlg_29_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz018.mp3", "", "", 3304982869, 1880170968, Spawn)
	AddConversationOption(conversation, "I'll try to remember.", "dlg_29_5")
	StartConversation(conversation, NPC, Spawn, "They sell for quite a bit, so try not to slice up the babies too much.")
end

