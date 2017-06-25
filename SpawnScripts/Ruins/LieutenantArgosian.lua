--[[
	Script Name	: SpawnScripts/Ruins/LieutenantArgosian.lua
	Script Purpose	: Lieutenant Argosian <Freeport Militia>
	Script Author	: scatman
	Script Date	: 2009.07.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QUEST_FROM_ARELLIUS = 262
local QUEST_1 = 263
local QUEST_2 = 264

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	local chance = math.random(1, 100)
	if chance <= 25 then
		local choice = math.random(1, 4)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/quest_lieutenant_argosian_callout_24873053.mp3", "The Ruins won't be safe until the orcs are eliminated completely!", "nod", 1037666324, 2592423942, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/quest_lieutenant_argosian_callout_3494a596.mp3", "We will make our stand against the Brokentusk and erase them from our city.", "nod", 3653569376, 3748121838, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/quest_lieutenant_argosian_callout_4b387393.mp3", "All citizens should take up arms against these orc beasts!", "brandish", 332911502, 701229058, Spawn)
		elseif choice == 4 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/quest_lieutenant_argosian_callout_8a5b29c8.mp3", "These filthy Brokentusk must be extinguished!", "threaten", 1555035852, 461893438, Spawn)
		end
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_FROM_ARELLIUS) then
		if HasCompletedQuest(Spawn, QUEST_1) then
			if HasCompletedQuest(Spawn, QUEST_2) then
			elseif HasQuest(Spawn, QUEST_2) then
				OnQuest2(NPC, Spawn, conversation)
			else
				WelcomeBack(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_1) then
			OnQuest1(NPC, Spawn, conversation)
		else
			RuinsBeingOverrun(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_FROM_ARELLIUS) then
		NoTimeForChatting(NPC, Spawn, conversation)
	else
		NoTimeForChatting(NPC, Spawn, conversation)
	end



--[[
	if HasCompletedQuest(Spawn, 1) then
	else
		
	end

	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian023.mp3", "", "", 2394457158, 2443723725, Spawn)
		AddConversationOption(conversation, "Not yet, lieutenant.", "dlg_1_1")
		StartConversation(conversation, NPC, Spawn, "Hello again, orc slayer. Did you find the shrine I ordered you to look for?")
	end

	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian001.mp3", "", "", 1274591844, 2524405313, Spawn)
		AddConversationOption(conversation, "My name is XXXXXXXXXXX. Captain Arellius ordered me to report here, lieutenant.", "dlg_4_1")
		AddConversationOption(conversation, "What is this place?")
		StartConversation(conversation, NPC, Spawn, "There's no time for chatting. I need to mobilize my forces to take care of these cursed orcs!")
	end

	if convo==5 then

	end

	if convo==7 then

	end
--]]
end

function NoTimeForChatting(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian001.mp3", "", "", 1274591844, 2524405313, Spawn)
	if HasQuest(Spawn, QUEST_FROM_ARELLIUS) then
		AddConversationOption(conversation, "My name is " .. GetName(Spawn) .. ". Captain Arellius ordered me to report here, lieutenant.", "dlg_4_1")
	end
	AddConversationOption(conversation, "What is this place?", "LookHere")
	StartConversation(conversation, NPC, Spawn, "There's no time for chatting. I need to mobilize my forces to take care of these cursed orcs!")
end

function LookHere(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I'll go speak with her.")
	StartConversation(conversation, NPC, Spawn, "Look here, adventurer. My troops must find a way to control these blasted brutes. If you want a history lesson, go speak with Captain Arellius on the docks. She may have time to fill you in, but I don't.")
end

-----------------------------------------------------------------------------------------------------------------
--					QUEST_FROM_ARELLIUS
-----------------------------------------------------------------------------------------------------------------

function dlg_4_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_ARELLIUS, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian003.mp3", "", "", 347286193, 1720701899, Spawn)
	AddConversationOption(conversation, "Defended from the orcs?", "RuinsBeingOverrun")
	AddConversationOption(conversation, "That sounds like your job, not mine.")
	StartConversation(conversation, NPC, Spawn, "Good, we can always use more recruits to help our cause. Freeport must be defended.")
end

-----------------------------------------------------------------------------------------------------------------
--					QUEST 1
-----------------------------------------------------------------------------------------------------------------

function RuinsBeingOverrun(NPC, Spawn, conversation)
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian004.mp3", "", "", 304896204, 2664209556, Spawn)
	AddConversationOption(conversation, "What is behind the orcs' sudden uprising?", "dlg_4_3")
	AddConversationOption(conversation, "You'd better get busy defending the city, then.")
	StartConversation(conversation, NPC, Spawn, "The Ruins are being overrun, and it's time for us to take a stand. We must ensure that the orcs don't infiltrate the rest of the city.")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian005.mp3", "", "", 1736920574, 580016233, Spawn)
	AddConversationOption(conversation, "Yes, I will help you.", "dlg_4_4")
	AddConversationOption(conversation, "No, not right now.")
	StartConversation(conversation, NPC, Spawn, "We haven't uncovered that yet, and frankly I don't have time to play detective. Are you willing to help the Freeport Militia turn back this tide of aggression?")
end

function dlg_4_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian006.mp3", "", "", 4214902547, 3965380224, Spawn)
	AddConversationOption(conversation, "What would you have me do?", "dlg_4_5")
	AddConversationOption(conversation, "On second thought, handle this yourself.")
	StartConversation(conversation, NPC, Spawn, "Excellent! It looks like the captain was wise to send you to me. Our outpost here is being beset on both sides by the Brokentusk clan of orcs. Once they were pathetically weak, but they seem to be training for a larger offensive.")
end

function dlg_4_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian007.mp3", "", "", 1892260608, 3800228650, Spawn)
	AddConversationOption(conversation, "What do you mean by striking fear?", "dlg_4_6")
	AddConversationOption(conversation, "Do your own dirty work.")
	StartConversation(conversation, NPC, Spawn, "A large number of Brokentusk pawns have been seen gathering to the south. Go up the stairs and help my troops strike some fear into them.")
end

function dlg_4_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian008.mp3", "", "", 1136740224, 4202559989, Spawn)
	AddConversationOption(conversation, "Yes, I'll do my part.", "dlg_4_7")
	AddConversationOption(conversation, "Nobody talks to me that way!")
	StartConversation(conversation, NPC, Spawn, "I mean make them DEAD! Look, if this is too much for you, move along, because I've got other recruits to train. Will you help us or not?")
end

function dlg_4_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian009.mp3", "", "", 3089238951, 3281159582, Spawn)
	AddConversationOption(conversation, "Aye, lieutenant.", "OfferQuest1")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Good! Let's test your mettle against the pawns. Kill at least ten of those beasts before you dare return to me. If you succeed, I'll gain some confidence in your abilities.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian010.mp3", "", "", 1424055044, 3253454726, Spawn)
	if GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "I defeated ten of them, as you ordered.", "dlg_7_1")
	end
	AddConversationOption(conversation, "Not yet, but I'll work on it.")
	StartConversation(conversation, NPC, Spawn, "Hello, recruit. Did you fulfill your duty to Freeport against the Brokentusk pawns?")
end

function dlg_7_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian011.mp3", "", "", 2187153051, 2285485412, Spawn)
	AddConversationOption(conversation, "I'm ready and willing.", "dlg_7_2")
	AddConversationOption(conversation, "Orc pawns are my specialty. I think I'll stick with those.")
	StartConversation(conversation, NPC, Spawn, "Well, nice work. It's almost as if you've killed orc pawns before! Maybe I can trust you with a more challenging task.")
end

-----------------------------------------------------------------------------------------------------------------
--					QUEST 2
-----------------------------------------------------------------------------------------------------------------

function WelcomeBack(NPC, Spawn, conversation)
	AddConversationOption(conversation, "Yes, I am ready to serve the Overlord's army.", "dlg_7_3")
	AddConversationOption(conversation, "Not right now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Welcome back. Are you ready to serve the Freeport Militia?")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian012.mp3", "", "", 4075384442, 2066166040, Spawn)
	AddConversationOption(conversation, "I will accept another assignment.", "dlg_7_3")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Those pawns were child's play, really. I just wanted to test your dedication to our cause. Now I need you to take on some tougher members of the Brokentusk clan.")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian013.mp3", "", "", 1827066506, 859247835, Spawn)
	AddConversationOption(conversation, "What do you mean by vagrant squatters?", "dlg_7_4")
	AddConversationOption(conversation, "Perhaps I should reconsider.")
	StartConversation(conversation, NPC, Spawn, "Some more formidable Brokentusk orcs are gathering to the north. They've taken up residence in some of the abandoned ruins there, and I've gotten reports that they have captured some of the vagrant squatters that used to reside there.")
end

function dlg_7_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian014.mp3", "", "", 1560986301, 1441248753, Spawn)
	AddConversationOption(conversation, "How horrible! Are we going to help them?", "dlg_7_5")
	AddConversationOption(conversation, "None of this is my concern.")
	StartConversation(conversation, NPC, Spawn, "After Shoreside was abandoned and became known as the Ruins, groups of vagrant beggars moved in here and seemed to coexist with the orcs. Our patrols have discovered that the Brokentusk recently killed most of the squatters, however, and are keeping a few as captives.")
end

function dlg_7_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian015.mp3", "", "", 2121023365, 565794587, Spawn)
	AddConversationOption(conversation, "Consider it done.", "OfferQuest2")
	AddConversationOption(conversation, "I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "Even though the squatters are not citizens, the Overlord will not tolerate unsanctioned violence within his borders. I need you to head north and teach the Brokentusk a lesson. Take special care to rid the area of any overseers you notice holding prisoners.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function OnQuest2(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian016.mp3", "", "", 568866263, 2772410909, Spawn)
	if GetQuestStep(Spawn, QUEST_2) == 4 then
		AddConversationOption(conversation, "I defeated many of them in battle, and slew an overseer that was holding some squatters captive.", "dlg_0_1")
	end
	AddConversationOption(conversation, "Not yet, lieutenant.")
	StartConversation(conversation, NPC, Spawn, "See you're back. Have you taught the Brokentusk a lesson?")
end





















function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian017.mp3", "", "", 3074507366, 3925134800, Spawn)
	AddConversationOption(conversation, "You suspect some greater plot?", "dlg_0_2")
	AddConversationOption(conversation, "That's your job.")
	StartConversation(conversation, NPC, Spawn, "My confidence in you is growing, adventurer! The time has come to see if we can find out what exactly is behind this orc uprising.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian018.mp3", "", "", 3835468248, 3651661502, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "Based on the change that has come over these orcs, I think something is afoot.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian019.mp3", "", "", 2918602738, 2245938808, Spawn)
	AddConversationOption(conversation, "Do you have any idea how they became more powerful?", "dlg_0_4")
	AddConversationOption(conversation, "You'd better get to work in that case.")
	StartConversation(conversation, NPC, Spawn, "The Militia didn't pay much attention to the Brokentusk until very recently. They were a pathetically weak clan, made up of mostly outcasts of the Bloodskull orcs in the Commonlands. But it seems they have new armor and stronger weapons, and seem to be on the move.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian020.mp3", "", "", 3553520221, 3928709815, Spawn)
	AddConversationOption(conversation, "I'll look for the shrine.", "dlg_0_5")
	AddConversationOption(conversation, "No, not today.")
	StartConversation(conversation, NPC, Spawn, "Not yet. My scouts have reported overhearing the orcs say that their prophets are guarding some kind of shrine deeper in the Ruins. I'd like to rule out any sort of divine influence, so I need you to find out whether or not this shrine actually exists. Are you willing?")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian021.mp3", "", "", 369320246, 927780722, Spawn)
	AddConversationOption(conversation, "I'll find it and take a close look. Do you have any other orders?", "dlg_0_6")
	StartConversation(conversation, NPC, Spawn, "Glad to hear we can count on you, adventurer. Rumor has it that this shrine may be located past the ruins to the north, though I don't have a precise location. When you find it, be sure to get close and examine it carefully.")
end

function dlg_0_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian022.mp3", "", "", 384501138, 1907732754, Spawn)
	AddConversationOption(conversation, "I will do so, lieutenant.", "dlg_0_7")
	StartConversation(conversation, NPC, Spawn, "Be sure to dispose of as many of those prophets as you can, and their warriors as well. If you find this shrine, try to determine that it is the source of their increased strength. Be careful though, there may be powerful forces protecting it.")
end

function dlg_0_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian022b.mp3", "", "", 3696168160, 1150705872, Spawn)
	AddConversationOption(conversation, "Yes, sir.", "dlg_0_8")
	StartConversation(conversation, NPC, Spawn, "Go now, and report back when your duty is done.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian024.mp3", "", "", 1799585583, 2887995117, Spawn)
	AddConversationOption(conversation, "It seems to be a relic from the days of Shoreside, but I can't tell why the orcs are guarding it.", "dlg_1_2")
	AddConversationOption(conversation, "I have no idea.")
	StartConversation(conversation, NPC, Spawn, "Well, good work in any case. What is the purpose of the shrine?")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian025.mp3", "", "", 89627192, 3614171485, Spawn)
	AddConversationOption(conversation, "No, it seems we have not.", "dlg_1_3")
	AddConversationOption(conversation, "It's none of my concern anyway.")
	StartConversation(conversation, NPC, Spawn, "I guess no one ever accused the Brokentusk of being too bright. Unfortunately, that means we haven't uncovered any evidence that explains why they are rising up.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian026.mp3", "", "", 265773881, 986062329, Spawn)
	AddConversationOption(conversation, "Thank you. Any other assignments for me?", "dlg_1_4")
	AddConversationOption(conversation, "I really don't care.")
	StartConversation(conversation, NPC, Spawn, "Thank you for your assistance. I have already informed Captain Arellius what you have done for the Militia. She will happily reward you for your efforts.")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian027.mp3", "", "", 1406479810, 234555817, Spawn)
	AddConversationOption(conversation, "I will report back to her.", "dlg_1_5")
	AddConversationOption(conversation, "I need to go.")
	StartConversation(conversation, NPC, Spawn, "You are welcome to stay and help us clear out more of these Brokentusks, but you really should report back to the captain to see if she has new orders for you. It's been a pleasure working with you.")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian027b.mp3", "", "", 3190269915, 3618413640, Spawn)
	AddConversationOption(conversation, "I will.", "dlg_1_6")
	StartConversation(conversation, NPC, Spawn, "Travel safely, citizen of Freeport.")
end









function dlg_4_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()


end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian003.mp3", "", "", 347286193, 1720701899, Spawn)
	AddConversationOption(conversation, "Defended from the orcs?", "dlg_5_2")
	AddConversationOption(conversation, "That sounds like your job, not mine.")
	StartConversation(conversation, NPC, Spawn, "Good, we can always use more recruits to help our cause. Freeport must be defended.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian004.mp3", "", "", 304896204, 2664209556, Spawn)
	AddConversationOption(conversation, "What is behind the orcs' sudden uprising?", "dlg_5_3")
	AddConversationOption(conversation, "You'd better get busy defending the city, then.")
	StartConversation(conversation, NPC, Spawn, "The Ruins are being overrun, and it's time for us to take a stand. We must ensure that the orcs don't infiltrate the rest of the city.")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian005.mp3", "", "", 1736920574, 580016233, Spawn)
	AddConversationOption(conversation, "Yes, I will help you.", "dlg_5_4")
	AddConversationOption(conversation, "No, not right now.")
	StartConversation(conversation, NPC, Spawn, "We haven't uncovered that yet, and frankly I don't have time to play detective. Are you willing to help the Freeport Militia turn back this tide of aggression?")
end

function dlg_5_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian006.mp3", "", "", 4214902547, 3965380224, Spawn)
	AddConversationOption(conversation, "What would you have me do?", "dlg_5_5")
	AddConversationOption(conversation, "On second thought, handle this yourself.")
	StartConversation(conversation, NPC, Spawn, "Excellent! It looks like the captain was wise to send you to me. Our outpost here is being beset on both sides by the Brokentusk clan of orcs. Once they were pathetically weak, but they seem to be training for a larger offensive.")
end

function dlg_5_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian007.mp3", "", "", 1892260608, 3800228650, Spawn)
	AddConversationOption(conversation, "What do you mean by striking fear?", "dlg_5_6")
	AddConversationOption(conversation, "Do your own dirty work.")
	StartConversation(conversation, NPC, Spawn, "A large number of Brokentusk pawns have been seen gathering to the south. Go up the stairs and help my troops strike some fear into them.")
end

function dlg_5_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian008.mp3", "", "", 1136740224, 4202559989, Spawn)
	AddConversationOption(conversation, "Yes, I'll do my part.", "dlg_5_7")
	AddConversationOption(conversation, "Nobody talks to me that way!")
	StartConversation(conversation, NPC, Spawn, "I mean make them DEAD! Look, if this is too much for you, move along, because I've got other recruits to train. Will you help us or not?")
end

function dlg_5_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian009.mp3", "", "", 3089238951, 3281159582, Spawn)
	AddConversationOption(conversation, "Aye, lieutenant.", "dlg_5_8")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Good! Let's test your mettle against the pawns. Kill at least ten of those beasts before you dare return to me. If you succeed, I'll gain some confidence in your abilities.")
end

function dlg_5_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian009b.mp3", "", "", 3351588566, 3135177671, Spawn)
	AddConversationOption(conversation, "I will do so.", "dlg_5_9")
	StartConversation(conversation, NPC, Spawn, "Get to work, citizen. You have your orders, now carry them out.")
end






function dlg_7_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()


end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/quest_lieutenant_argosian_callout_4b387393.mp3", "All citizens should take up arms against these orc beasts!", "brandish", 332911502, 701229058, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/quest_lieutenant_argosian_callout_8a5b29c8.mp3", "These filthy Brokentusk must be extinguished!", "threaten", 1555035852, 461893438, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/quest_lieutenant_argosian_callout_24873053.mp3", "The Ruins won't be safe until the orcs are eliminated completely!", "nod", 1037666324, 2592423942, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/quest_lieutenant_argosian_callout_3494a596.mp3", "We will make our stand against the Brokentusk and erase them from our city.", "nod", 3653569376, 3748121838, Spawn)
--]]





-- JA: new raw data collection text (2 parts)

--[[
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/quest_lieutenant_argosian_callout_24873053.mp3", "The Ruins won't be safe until the orcs are eliminated completely!", "nod", 1037666324, 2592423942, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/quest_lieutenant_argosian_callout_3494a596.mp3", "We will make our stand against the Brokentusk and erase them from our city.", "nod", 3653569376, 3748121838, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/quest_lieutenant_argosian_callout_4b387393.mp3", "All citizens should take up arms against these orc beasts!", "brandish", 332911502, 701229058, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/quest_lieutenant_argosian_callout_8a5b29c8.mp3", "These filthy Brokentusk must be extinguished!", "threaten", 1555035852, 461893438, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian016.mp3", "", "", 568866263, 2772410909, Spawn)
	AddConversationOption(conversation, "I defeated many of them in battle, and slew an overseer that was holding some squatters captive.", "dlg_0_1")
	AddConversationOption(conversation, "Not yet, lieutenant.")
	StartConversation(conversation, NPC, Spawn, "See you're back. Have you taught the Brokentusk a lesson?")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian023.mp3", "", "", 2394457158, 2443723725, Spawn)
		AddConversationOption(conversation, "Not yet, lieutenant.", "dlg_1_1")
		StartConversation(conversation, NPC, Spawn, "Hello again, orc slayer. Did you find the shrine I ordered you to look for?")
	end

	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian001.mp3", "", "", 1274591844, 2524405313, Spawn)
		AddConversationOption(conversation, "My name is XXXXXXXXXXX. Captain Arellius ordered me to report here, lieutenant.", "dlg_4_1")
		AddConversationOption(conversation, "What is this place?")
		StartConversation(conversation, NPC, Spawn, "There's no time for chatting. I need to mobilize my forces to take care of these cursed orcs!")
	end

	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian001.mp3", "", "", 1274591844, 2524405313, Spawn)
		AddConversationOption(conversation, "My name is XXXXXXX. Captain Arellius ordered me to report here, lieutenant.", "dlg_5_1")
		AddConversationOption(conversation, "What is this place?")
		StartConversation(conversation, NPC, Spawn, "There's no time for chatting. I need to mobilize my forces to take care of these cursed orcs!")
	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian010.mp3", "", "", 1424055044, 3253454726, Spawn)
		AddConversationOption(conversation, "I defeated ten of them, as you ordered.", "dlg_7_1")
		AddConversationOption(conversation, "Not yet, but I'll work on it.")
		StartConversation(conversation, NPC, Spawn, "Hello, recruit. Did you fulfill your duty to Freeport against the Brokentusk pawns?")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian017.mp3", "", "", 3074507366, 3925134800, Spawn)
	AddConversationOption(conversation, "You suspect some greater plot?", "dlg_0_2")
	AddConversationOption(conversation, "That's your job.")
	StartConversation(conversation, NPC, Spawn, "My confidence in you is growing, adventurer! The time has come to see if we can find out what exactly is behind this orc uprising.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian018.mp3", "", "", 3835468248, 3651661502, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "Based on the change that has come over these orcs, I think something is afoot.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian019.mp3", "", "", 2918602738, 2245938808, Spawn)
	AddConversationOption(conversation, "Do you have any idea how they became more powerful?", "dlg_0_4")
	AddConversationOption(conversation, "You'd better get to work in that case.")
	StartConversation(conversation, NPC, Spawn, "The Militia didn't pay much attention to the Brokentusk until very recently. They were a pathetically weak clan, made up of mostly outcasts of the Bloodskull orcs in the Commonlands. But it seems they have new armor and stronger weapons, and seem to be on the move.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian020.mp3", "", "", 3553520221, 3928709815, Spawn)
	AddConversationOption(conversation, "I'll look for the shrine.", "dlg_0_5")
	AddConversationOption(conversation, "No, not today.")
	StartConversation(conversation, NPC, Spawn, "Not yet. My scouts have reported overhearing the orcs say that their prophets are guarding some kind of shrine deeper in the Ruins. I'd like to rule out any sort of divine influence, so I need you to find out whether or not this shrine actually exists. Are you willing?")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian021.mp3", "", "", 369320246, 927780722, Spawn)
	AddConversationOption(conversation, "I'll find it and take a close look. Do you have any other orders?", "dlg_0_6")
	StartConversation(conversation, NPC, Spawn, "Glad to hear we can count on you, adventurer. Rumor has it that this shrine may be located past the ruins to the north, though I don't have a precise location. When you find it, be sure to get close and examine it carefully.")
end

function dlg_0_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian022.mp3", "", "", 384501138, 1907732754, Spawn)
	AddConversationOption(conversation, "I will do so, lieutenant.", "dlg_0_7")
	StartConversation(conversation, NPC, Spawn, "Be sure to dispose of as many of those prophets as you can, and their warriors as well. If you find this shrine, try to determine that it is the source of their increased strength. Be careful though, there may be powerful forces protecting it.")
end

function dlg_0_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian022b.mp3", "", "", 3696168160, 1150705872, Spawn)
	AddConversationOption(conversation, "Yes, sir.", "dlg_0_8")
	StartConversation(conversation, NPC, Spawn, "Go now, and report back when your duty is done.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian024.mp3", "", "", 1799585583, 2887995117, Spawn)
	AddConversationOption(conversation, "It seems to be a relic from the days of Shoreside, but I can't tell why the orcs are guarding it.", "dlg_1_2")
	AddConversationOption(conversation, "I have no idea.")
	StartConversation(conversation, NPC, Spawn, "Well, good work in any case. What is the purpose of the shrine?")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian025.mp3", "", "", 89627192, 3614171485, Spawn)
	AddConversationOption(conversation, "No, it seems we have not.", "dlg_1_3")
	AddConversationOption(conversation, "It's none of my concern anyway.")
	StartConversation(conversation, NPC, Spawn, "I guess no one ever accused the Brokentusk of being too bright. Unfortunately, that means we haven't uncovered any evidence that explains why they are rising up.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian026.mp3", "", "", 265773881, 986062329, Spawn)
	AddConversationOption(conversation, "Thank you. Any other assignments for me?", "dlg_1_4")
	AddConversationOption(conversation, "I really don't care.")
	StartConversation(conversation, NPC, Spawn, "Thank you for your assistance. I have already informed Captain Arellius what you have done for the Militia. She will happily reward you for your efforts.")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian027.mp3", "", "", 1406479810, 234555817, Spawn)
	AddConversationOption(conversation, "I will report back to her.", "dlg_1_5")
	AddConversationOption(conversation, "I need to go.")
	StartConversation(conversation, NPC, Spawn, "You are welcome to stay and help us clear out more of these Brokentusks, but you really should report back to the captain to see if she has new orders for you. It's been a pleasure working with you.")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian027b.mp3", "", "", 3190269915, 3618413640, Spawn)
	AddConversationOption(conversation, "I will.", "dlg_1_6")
	StartConversation(conversation, NPC, Spawn, "Travel safely, citizen of Freeport.")
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian003.mp3", "", "", 347286193, 1720701899, Spawn)
	AddConversationOption(conversation, "Defended from the orcs?", "dlg_4_2")
	AddConversationOption(conversation, "That sounds like your job, not mine.")
	StartConversation(conversation, NPC, Spawn, "Good, we can always use more recruits to help our cause. Freeport must be defended.")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian004.mp3", "", "", 304896204, 2664209556, Spawn)
	AddConversationOption(conversation, "What is behind the orcs' sudden uprising?", "dlg_4_3")
	AddConversationOption(conversation, "You'd better get busy defending the city, then.")
	StartConversation(conversation, NPC, Spawn, "The Ruins are being overrun, and it's time for us to take a stand. We must ensure that the orcs don't infiltrate the rest of the city.")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian005.mp3", "", "", 1736920574, 580016233, Spawn)
	AddConversationOption(conversation, "Yes, I will help you.", "dlg_4_4")
	AddConversationOption(conversation, "No, not right now.")
	StartConversation(conversation, NPC, Spawn, "We haven't uncovered that yet, and frankly I don't have time to play detective. Are you willing to help the Freeport Militia turn back this tide of aggression?")
end

function dlg_4_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian006.mp3", "", "", 4214902547, 3965380224, Spawn)
	AddConversationOption(conversation, "What would you have me do?", "dlg_4_5")
	AddConversationOption(conversation, "On second thought, handle this yourself.")
	StartConversation(conversation, NPC, Spawn, "Excellent! It looks like the captain was wise to send you to me. Our outpost here is being beset on both sides by the Brokentusk clan of orcs. Once they were pathetically weak, but they seem to be training for a larger offensive.")
end

function dlg_4_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian007.mp3", "", "", 1892260608, 3800228650, Spawn)
	AddConversationOption(conversation, "What do you mean by striking fear?", "dlg_4_6")
	AddConversationOption(conversation, "Do your own dirty work.")
	StartConversation(conversation, NPC, Spawn, "A large number of Brokentusk pawns have been seen gathering to the south. Go up the stairs and help my troops strike some fear into them.")
end

function dlg_4_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian008.mp3", "", "", 1136740224, 4202559989, Spawn)
	AddConversationOption(conversation, "Yes, I'll do my part.", "dlg_4_7")
	AddConversationOption(conversation, "Nobody talks to me that way!")
	StartConversation(conversation, NPC, Spawn, "I mean make them DEAD! Look, if this is too much for you, move along, because I've got other recruits to train. Will you help us or not?")
end

function dlg_4_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian009.mp3", "", "", 3089238951, 3281159582, Spawn)
	AddConversationOption(conversation, "Aye, lieutenant.", "dlg_4_8")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Good! Let's test your mettle against the pawns. Kill at least ten of those beasts before you dare return to me. If you succeed, I'll gain some confidence in your abilities.")
end

function dlg_4_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian009b.mp3", "", "", 3351588566, 3135177671, Spawn)
	AddConversationOption(conversation, "I will do so.", "dlg_4_9")
	StartConversation(conversation, NPC, Spawn, "Get to work, citizen. You have your orders, now carry them out.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian003.mp3", "", "", 347286193, 1720701899, Spawn)
	AddConversationOption(conversation, "Defended from the orcs?", "dlg_5_2")
	AddConversationOption(conversation, "That sounds like your job, not mine.")
	StartConversation(conversation, NPC, Spawn, "Good, we can always use more recruits to help our cause. Freeport must be defended.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian004.mp3", "", "", 304896204, 2664209556, Spawn)
	AddConversationOption(conversation, "What is behind the orcs' sudden uprising?", "dlg_5_3")
	AddConversationOption(conversation, "You'd better get busy defending the city, then.")
	StartConversation(conversation, NPC, Spawn, "The Ruins are being overrun, and it's time for us to take a stand. We must ensure that the orcs don't infiltrate the rest of the city.")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian005.mp3", "", "", 1736920574, 580016233, Spawn)
	AddConversationOption(conversation, "Yes, I will help you.", "dlg_5_4")
	AddConversationOption(conversation, "No, not right now.")
	StartConversation(conversation, NPC, Spawn, "We haven't uncovered that yet, and frankly I don't have time to play detective. Are you willing to help the Freeport Militia turn back this tide of aggression?")
end

function dlg_5_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian006.mp3", "", "", 4214902547, 3965380224, Spawn)
	AddConversationOption(conversation, "What would you have me do?", "dlg_5_5")
	AddConversationOption(conversation, "On second thought, handle this yourself.")
	StartConversation(conversation, NPC, Spawn, "Excellent! It looks like the captain was wise to send you to me. Our outpost here is being beset on both sides by the Brokentusk clan of orcs. Once they were pathetically weak, but they seem to be training for a larger offensive.")
end

function dlg_5_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian007.mp3", "", "", 1892260608, 3800228650, Spawn)
	AddConversationOption(conversation, "What do you mean by striking fear?", "dlg_5_6")
	AddConversationOption(conversation, "Do your own dirty work.")
	StartConversation(conversation, NPC, Spawn, "A large number of Brokentusk pawns have been seen gathering to the south. Go up the stairs and help my troops strike some fear into them.")
end

function dlg_5_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian008.mp3", "", "", 1136740224, 4202559989, Spawn)
	AddConversationOption(conversation, "Yes, I'll do my part.", "dlg_5_7")
	AddConversationOption(conversation, "Nobody talks to me that way!")
	StartConversation(conversation, NPC, Spawn, "I mean make them DEAD! Look, if this is too much for you, move along, because I've got other recruits to train. Will you help us or not?")
end

function dlg_5_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian009.mp3", "", "", 3089238951, 3281159582, Spawn)
	AddConversationOption(conversation, "Aye, lieutenant.", "dlg_5_8")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Good! Let's test your mettle against the pawns. Kill at least ten of those beasts before you dare return to me. If you succeed, I'll gain some confidence in your abilities.")
end

function dlg_5_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian009b.mp3", "", "", 3351588566, 3135177671, Spawn)
	AddConversationOption(conversation, "I will do so.", "dlg_5_9")
	StartConversation(conversation, NPC, Spawn, "Get to work, citizen. You have your orders, now carry them out.")
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian011.mp3", "", "", 2187153051, 2285485412, Spawn)
	AddConversationOption(conversation, "I'm ready and willing.", "dlg_7_2")
	AddConversationOption(conversation, "Orc pawns are my specialty. I think I'll stick with those.")
	StartConversation(conversation, NPC, Spawn, "Well, nice work. It's almost as if you've killed orc pawns before! Maybe I can trust you with a more challenging task.")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian012.mp3", "", "", 4075384442, 2066166040, Spawn)
	AddConversationOption(conversation, "I will accept another assignment.", "dlg_7_3")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Those pawns were child's play, really. I just wanted to test your dedication to our cause. Now I need you to take on some tougher members of the Brokentusk clan.")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian013.mp3", "", "", 1827066506, 859247835, Spawn)
	AddConversationOption(conversation, "What do you mean by vagrant squatters?", "dlg_7_4")
	AddConversationOption(conversation, "Perhaps I should reconsider.")
	StartConversation(conversation, NPC, Spawn, "Some more formidable Brokentusk orcs are gathering to the north. They've taken up residence in some of the abandoned ruins there, and I've gotten reports that they have captured some of the vagrant squatters that used to reside there.")
end

function dlg_7_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian014.mp3", "", "", 1560986301, 1441248753, Spawn)
	AddConversationOption(conversation, "How horrible! Are we going to help them?", "dlg_7_5")
	AddConversationOption(conversation, "None of this is my concern.")
	StartConversation(conversation, NPC, Spawn, "After Shoreside was abandoned and became known as the Ruins, groups of vagrant beggars moved in here and seemed to coexist with the orcs. Our patrols have discovered that the Brokentusk recently killed most of the squatters, however, and are keeping a few as captives.")
end

function dlg_7_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian015.mp3", "", "", 2121023365, 565794587, Spawn)
	AddConversationOption(conversation, "Consider it done.", "dlg_7_6")
	AddConversationOption(conversation, "I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "Even though the squatters are not citizens, the Overlord will not tolerate unsanctioned violence within his borders. I need you to head north and teach the Brokentusk a lesson. Take special care to rid the area of any overseers you notice holding prisoners.")
end

function dlg_7_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian015b.mp3", "", "", 102436079, 1387861460, Spawn)
	AddConversationOption(conversation, "I will.", "dlg_7_7")
	StartConversation(conversation, NPC, Spawn, "I knew I could count on you. Return to me when the orcs have paid for their crimes.")
end
--]]

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/quest_lieutenant_argosian_callout_4b387393.mp3", "All citizens should take up arms against these orc beasts!", "brandish", 332911502, 701229058, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/quest_lieutenant_argosian_callout_8a5b29c8.mp3", "These filthy Brokentusk must be extinguished!", "threaten", 1555035852, 461893438, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/quest_lieutenant_argosian_callout_24873053.mp3", "The Ruins won't be safe until the orcs are eliminated completely!", "nod", 1037666324, 2592423942, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/quest_lieutenant_argosian_callout_3494a596.mp3", "We will make our stand against the Brokentusk and erase them from our city.", "nod", 3653569376, 3748121838, Spawn)
--]]




-- JA: second part

--[[
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian001.mp3", "", "", 1274591844, 2524405313, Spawn)
	AddConversationOption(conversation, "My name is XXXXXXX. Captain Arellius ordered me to report here, lieutenant.", "dlg_5_1")
	AddConversationOption(conversation, "What is this place?")
	StartConversation(conversation, NPC, Spawn, "There's no time for chatting. I need to mobilize my forces to take care of these cursed orcs!")
	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian001.mp3", "", "", 1274591844, 2524405313, Spawn)
		AddConversationOption(conversation, "My name is XXXXXXX. Captain Arellius ordered me to report here, lieutenant.", "dlg_6_1")
		AddConversationOption(conversation, "What is this place?")
		StartConversation(conversation, NPC, Spawn, "There's no time for chatting. I need to mobilize my forces to take care of these cursed orcs!")
	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian004.mp3", "", "", 304896204, 2664209556, Spawn)
		AddConversationOption(conversation, "What is behind the orcs' sudden uprising?", "dlg_7_1")
		AddConversationOption(conversation, "You'd better get busy defending the city, then.")
		StartConversation(conversation, NPC, Spawn, "The Ruins are being overrun, and it's time for us to take a stand. We must ensure that the orcs don't infiltrate the rest of the city.")
	end

	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian010.mp3", "", "", 1424055044, 3253454726, Spawn)
		AddConversationOption(conversation, "I defeated ten of them, as you ordered.", "dlg_8_1")
		AddConversationOption(conversation, "Not yet, but I'll work on it.")
		StartConversation(conversation, NPC, Spawn, "Hello, recruit. Did you fulfill your duty to Freeport against the Brokentusk pawns?")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian010.mp3", "", "", 1424055044, 3253454726, Spawn)
		AddConversationOption(conversation, "I defeated ten of them, as you ordered.", "dlg_9_1")
		AddConversationOption(conversation, "Not yet, but I'll work on it.")
		StartConversation(conversation, NPC, Spawn, "Hello, recruit. Did you fulfill your duty to Freeport against the Brokentusk pawns?")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian030.mp3", "", "", 176584660, 1690362035, Spawn)
		AddConversationOption(conversation, "Yes, I am ready to serve the Overlord's army.", "dlg_10_1")
		AddConversationOption(conversation, "Not right now, thanks.")
		StartConversation(conversation, NPC, Spawn, "Welcome back. Are you ready to serve the Freeport Militia?")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian016.mp3", "", "", 568866263, 2772410909, Spawn)
		AddConversationOption(conversation, "Not yet, lieutenant.", "dlg_11_1")
		StartConversation(conversation, NPC, Spawn, "See you're back. Have you taught the Brokentusk a lesson?")
	end

	if convo==12 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian016.mp3", "", "", 568866263, 2772410909, Spawn)
		AddConversationOption(conversation, "I defeated many of them in battle, and slew an overseer that was holding some squatters captive.", "dlg_12_1")
		AddConversationOption(conversation, "Not yet, lieutenant.")
		StartConversation(conversation, NPC, Spawn, "See you're back. Have you taught the Brokentusk a lesson?")
	end

	if convo==13 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian016.mp3", "", "", 568866263, 2772410909, Spawn)
		AddConversationOption(conversation, "I defeated many of them in battle, and slew an overseer that was holding some squatters captive.", "dlg_13_1")
		AddConversationOption(conversation, "Not yet, lieutenant.")
		StartConversation(conversation, NPC, Spawn, "See you're back. Have you taught the Brokentusk a lesson?")
	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian031.mp3", "", "", 825306924, 1228801639, Spawn)
		AddConversationOption(conversation, "Yes I am. What is going on with the Brokentusk orcs?", "dlg_14_1")
		AddConversationOption(conversation, "Not quite yet.")
		StartConversation(conversation, NPC, Spawn, "Hello again. Are you ready to resume your service to the Militia?")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian023.mp3", "", "", 2394457158, 2443723725, Spawn)
		AddConversationOption(conversation, "Not yet, lieutenant.", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "Hello again, orc slayer. Did you find the shrine I ordered you to look for?")
	end

	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian023.mp3", "", "", 2394457158, 2443723725, Spawn)
		AddConversationOption(conversation, "I found a shrine, but it didn't seem to be strengthening the Brokentusk in any way.", "dlg_16_1")
		AddConversationOption(conversation, "Not yet, lieutenant.")
		StartConversation(conversation, NPC, Spawn, "Hello again, orc slayer. Did you find the shrine I ordered you to look for?")
	end

	if convo==17 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian026.mp3", "", "", 265773881, 986062329, Spawn)
		AddConversationOption(conversation, "Thank you. Any other assignments for me?", "dlg_17_1")
		AddConversationOption(conversation, "I really don't care.")
		StartConversation(conversation, NPC, Spawn, "Thank you for your assistance. I have already informed Captain Arellius what you have done for the Militia. She will happily reward you for your efforts.")
	end

	if convo==18 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian026.mp3", "", "", 265773881, 986062329, Spawn)
		AddConversationOption(conversation, "Thank you. Any other assignments for me?", "dlg_18_1")
		AddConversationOption(conversation, "I really don't care.")
		StartConversation(conversation, NPC, Spawn, "Thank you for your assistance. I have already informed Captain Arellius what you have done for the Militia. She will happily reward you for your efforts.")
	end

	if convo==19 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian029.mp3", "", "", 2954961596, 2347761569, Spawn)
		AddConversationOption(conversation, "I'll do so, lieutenant.", "dlg_19_1")
		StartConversation(conversation, NPC, Spawn, "Ah, welcome back to the front lines! Be sure to bash a few Brokentusk heads if you get the chance!")
	end

end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian002.mp3", "", "", 1265605961, 1173429431, Spawn)
	AddConversationOption(conversation, "I'll go speak with her.")
	StartConversation(conversation, NPC, Spawn, "Look here, adventurer. My troops must find a way to control these blasted brutes. If you want a history lesson, go speak to Captain Arellius on the docks. She may have time to fill you in, but I don't.")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian003.mp3", "", "", 347286193, 1720701899, Spawn)
	AddConversationOption(conversation, "Defended from the orcs?", "dlg_6_2")
	AddConversationOption(conversation, "That sounds like your job, not mine.")
	StartConversation(conversation, NPC, Spawn, "Good, we can always use more recruits to help our cause. Freeport must be defended.")
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian005.mp3", "", "", 1736920574, 580016233, Spawn)
	AddConversationOption(conversation, "Yes, I will help you.", "dlg_7_2")
	AddConversationOption(conversation, "No, not right now.")
	StartConversation(conversation, NPC, Spawn, "We haven't uncovered that yet, and frankly I don't have time to play detective. Are you willing to help the Freeport Militia turn back this tide of aggression?")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian006.mp3", "", "", 4214902547, 3965380224, Spawn)
	AddConversationOption(conversation, "What would you have me do?", "dlg_7_3")
	AddConversationOption(conversation, "On second thought, handle this yourself.")
	StartConversation(conversation, NPC, Spawn, "Excellent! It looks like the captain was wise to send you to me. Our outpost here is being beset on both sides by the Brokentusk clan of orcs. Once they were pathetically weak, but they seem to be training for a larger offensive.")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian007.mp3", "", "", 1892260608, 3800228650, Spawn)
	AddConversationOption(conversation, "What do you mean by striking fear?", "dlg_7_4")
	AddConversationOption(conversation, "Do your own dirty work.")
	StartConversation(conversation, NPC, Spawn, "A large number of Brokentusk pawns have been seen gathering to the south. Go up the stairs and help my troops strike some fear into them.")
end

function dlg_7_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian008.mp3", "", "", 1136740224, 4202559989, Spawn)
	AddConversationOption(conversation, "Yes, I'll do my part.", "dlg_7_5")
	AddConversationOption(conversation, "Nobody talks to me that way!")
	StartConversation(conversation, NPC, Spawn, "I mean make them DEAD! Look, if this is too much for you, move along, because I've got other recruits to train. Will you help us or not?")
end

function dlg_7_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian009.mp3", "", "", 3089238951, 3281159582, Spawn)
	AddConversationOption(conversation, "Aye, lieutenant.", "dlg_7_6")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Good! Let's test your mettle against the pawns. Kill at least ten of those beasts before you dare return to me. If you succeed, I'll gain some confidence in your abilities.")
end

function dlg_7_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian009b.mp3", "", "", 3351588566, 3135177671, Spawn)
	AddConversationOption(conversation, "I will do so.", "dlg_7_7")
	StartConversation(conversation, NPC, Spawn, "Get to work, citizen. You have your orders, now carry them out.")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian011.mp3", "", "", 2187153051, 2285485412, Spawn)
	AddConversationOption(conversation, "I'm ready and willing.", "dlg_9_2")
	AddConversationOption(conversation, "Orc pawns are my specialty. I think I'll stick with those.")
	StartConversation(conversation, NPC, Spawn, "Well, nice work. It's almost as if you've killed orc pawns before! Maybe I can trust you with a more challenging task.")
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian013.mp3", "", "", 1827066506, 859247835, Spawn)
	AddConversationOption(conversation, "What do you mean by vagrant squatters?", "dlg_10_2")
	AddConversationOption(conversation, "Perhaps I should reconsider.")
	StartConversation(conversation, NPC, Spawn, "Some more formidable Brokentusk orcs are gathering to the north. They've taken up residence in some of the abandoned ruins there, and I've gotten reports that they have captured some of the vagrant squatters that used to reside there.")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian014.mp3", "", "", 1560986301, 1441248753, Spawn)
	AddConversationOption(conversation, "How horrible! Are we going to help them?", "dlg_10_3")
	AddConversationOption(conversation, "None of this is my concern.")
	StartConversation(conversation, NPC, Spawn, "After Shoreside was abandoned and became known as the Ruins, groups of vagrant beggars moved in here and seemed to coexist with the orcs. Our patrols have discovered that the Brokentusk recently killed most of the squatters, however, and are keeping a few as captives.")
end

function dlg_10_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian015.mp3", "", "", 2121023365, 565794587, Spawn)
	AddConversationOption(conversation, "Consider it done.", "dlg_10_4")
	AddConversationOption(conversation, "I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "Even though the squatters are not citizens, the Overlord will not tolerate unsanctioned violence within his borders. I need you to head north and teach the Brokentusk a lesson. Take special care to rid the area of any overseers you notice holding prisoners.")
end

function dlg_10_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian015b.mp3", "", "", 102436079, 1387861460, Spawn)
	AddConversationOption(conversation, "I will.", "dlg_10_5")
	StartConversation(conversation, NPC, Spawn, "I knew I could count on you. Return to me when the orcs have paid for their crimes.")
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian017.mp3", "", "", 3074507366, 3925134800, Spawn)
	AddConversationOption(conversation, "You suspect some greater plot?", "dlg_12_2")
	AddConversationOption(conversation, "That's your job.")
	StartConversation(conversation, NPC, Spawn, "My confidence in you is growing, adventurer! The time has come to see if we can find out what exactly is behind this orc uprising.")
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian017.mp3", "", "", 3074507366, 3925134800, Spawn)
	AddConversationOption(conversation, "You suspect some greater plot?", "dlg_13_2")
	AddConversationOption(conversation, "That's your job.")
	StartConversation(conversation, NPC, Spawn, "My confidence in you is growing, adventurer! The time has come to see if we can find out what exactly is behind this orc uprising.")
end

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian018.mp3", "", "", 3835468248, 3651661502, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_13_3")
	StartConversation(conversation, NPC, Spawn, "Based on the change that has come over these orcs, I think something is afoot.")
end

function dlg_13_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian019.mp3", "", "", 2918602738, 2245938808, Spawn)
	AddConversationOption(conversation, "Do you have any idea how they became more powerful?", "dlg_13_4")
	AddConversationOption(conversation, "You'd better get to work in that case.")
	StartConversation(conversation, NPC, Spawn, "The Militia didn't pay much attention to the Brokentusk until very recently. They were a pathetically weak clan, made up of mostly outcasts of the Bloodskull orcs in the Commonlands. But it seems they have new armor and stronger weapons, and seem to be on the move.")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian019.mp3", "", "", 2918602738, 2245938808, Spawn)
	AddConversationOption(conversation, "Do you have any idea how they became more powerful?", "dlg_14_2")
	AddConversationOption(conversation, "You'd better get to work in that case.")
	StartConversation(conversation, NPC, Spawn, "The Militia didn't pay much attention to the Brokentusk until very recently. They were a pathetically weak clan, made up of mostly outcasts of the Bloodskull orcs in the Commonlands. But it seems they have new armor and stronger weapons, and seem to be on the move.")
end

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian020.mp3", "", "", 3553520221, 3928709815, Spawn)
	AddConversationOption(conversation, "I'll look for the shrine.", "dlg_14_3")
	AddConversationOption(conversation, "No, not today.")
	StartConversation(conversation, NPC, Spawn, "Not yet. My scouts have reported overhearing the orcs say that their prophets are guarding some kind of shrine deeper in the Ruins. I'd like to rule out any sort of divine influence, so I need you to find out whether or not this shrine actually exists. Are you willing?")
end

function dlg_14_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian021.mp3", "", "", 369320246, 927780722, Spawn)
	AddConversationOption(conversation, "I'll find it and take a close look. Do you have any other orders?", "dlg_14_4")
	StartConversation(conversation, NPC, Spawn, "Glad to hear we can count on you, adventurer. Rumor has it that this shrine may be located past the ruins to the north, though I don't have a precise location. When you find it, be sure to get close and examine it carefully.")
end

function dlg_14_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian022.mp3", "", "", 384501138, 1907732754, Spawn)
	AddConversationOption(conversation, "I will do so, lieutenant.", "dlg_14_5")
	StartConversation(conversation, NPC, Spawn, "Be sure to dispose of as many of those prophets as you can, and their warriors as well. If you find this shrine, try to determine that it is the source of their increased strength. Be careful though, there may be powerful forces protecting it.")
end

function dlg_14_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian022b.mp3", "", "", 3696168160, 1150705872, Spawn)
	AddConversationOption(conversation, "Yes, sir.", "dlg_14_6")
	StartConversation(conversation, NPC, Spawn, "Go now, and report back when your duty is done.")
end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian024.mp3", "", "", 1799585583, 2887995117, Spawn)
	AddConversationOption(conversation, "It seems to be a relic from the days of Shoreside, but I can't tell why the orcs are guarding it.", "dlg_16_2")
	AddConversationOption(conversation, "I have no idea.")
	StartConversation(conversation, NPC, Spawn, "Well, good work in any case. What is the purpose of the shrine?")
end

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian027.mp3", "", "", 1406479810, 234555817, Spawn)
	AddConversationOption(conversation, "I will report back to her.", "dlg_18_2")
	AddConversationOption(conversation, "I need to go.")
	StartConversation(conversation, NPC, Spawn, "You are welcome to stay and help us clear out more of these Brokentusks, but you really should report back to the captain to see if she has new orders for you. It's been a pleasure working with you.")
end

function dlg_18_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian027b.mp3", "", "", 3190269915, 3618413640, Spawn)
	AddConversationOption(conversation, "I will.", "dlg_18_3")
	StartConversation(conversation, NPC, Spawn, "Travel safely, citizen of Freeport.")
end
--]]

