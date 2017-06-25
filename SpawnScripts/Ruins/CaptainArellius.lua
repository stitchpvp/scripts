--[[
	Script Name	: SpawnScripts/Ruins/CaptainArellius.lua
	Script Purpose	: Captain Arellius <Freeport Militia>
	Script Author	: Scatman
	Script Date	: 2009.08.20
	Script Notes	: 
--]]

local QUEST_FROM_ZADDAR_GRAVEYARD = 251
local QUEST_FROM_KURDEK_SPRAWL = 257
local QUEST_COMMONLANDS = 1
local QUEST_FROM_THORSON_SUNKENCITY = 274
local QUEST_1 = 262
local QUEST_4_FROM_ARGOSIAN = 280
local QUEST_2 = 285
local QUEST_4_FROM_LIEUTENANT_IMPERIDUS = 289

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
	--ProvidesQuesT(NPC, QUEST_COMMONDLANDS)
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
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/quest_captain_arellius_callout_257dc2e4.mp3", "To arms! The Ruins must be defended against these mindless brutes!", "brandish", 2691467763, 3825315561, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/quest_captain_arellius_callout_5b6ad828.mp3", "The Freeport Militia will make a stand against these orcs!", "threaten", 3371139514, 3350465604, Spawn)
		elseif choice == 3 then
			Say(NPC, "This orc uprising cannot be tolerated!", Spawn)
		elseif choice == 4 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/quest_captain_arellius_callout_6af9e361.mp3", "We must avenge the fallen of Shoreside!", "brandish", 352522731, 4132511279, Spawn)
		elseif choice == 5 then
			Say(NPC, "More recruits are needed to man the barricades!", Spawn)
		end
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_FROM_ZADDAR_GRAVEYARD) then
		AddConversationOption(conversation, "My name is " .. GetName(Spawn) .. ". Custodian Zaddar in the Graveyard sent me.", "dlg_0_1")
	end
	if HasQuest(Spawn, QUEST_FROM_KURDEK_SPRAWL) then
		AddConversationOption(conversation, "My name is " .. GetName(Spawn) .. ". Enforcer Kurdek in the Sprawl sent me.", "FromTheSprawl")
	end
	if HasQuest(Spawn, QUEST_FROM_THORSON_SUNKENCITY) then
		AddConversationOption(conversation, "My name is " .. GetName(Spawn) .. ". Inquisitor Thorson in the Sunken City sent me.", "FromSunkenCity")
	end

	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_4_FROM_ARGOSIAN) then
			if HasCompletedQuest(Spawn, QUEST_2) then
				if HasCompletedQuest(Spawn, QUEST_4_FROM_LIEUTENANT_IMPERIDUS) then
					FinishedQuestLine(NPC, Spawn, conversation)
				elseif HasQuest(Spawn, QUEST_4_FROM_LIEUTENANT_IMPERIDUS) then
					OnQuest2(NPC, Spawn, conversation)
				else
					OnQuest2(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_2) then
				OnQuest2(NPC, Spawn, conversation)
			else
				OnQuest1(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_4_FROM_ARGOSIAN) then
			OnQuest1(NPC, Spawn, conversation)
		else
			OnQuest1(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		StandYourGround(NPC, Spawn, conversation)
	end


--[[	if HasCompletedQuest(Spawn, 1) then
	else
		
	end

	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius001.mp3", "", "", 3910993894, 659100358, Spawn)
		AddConversationOption(conversation, "It sounds like you need a hand. How can I help?", "dlg_1_1")
		AddConversationOption(conversation, "Your conflict is none of my concern.")
		StartConversation(conversation, NPC, Spawn, "Stand your ground! I will defend Freeport to my dying breath! Are you friend or foe?")
	end

	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius001.mp3", "", "", 3910993894, 659100358, Spawn)
		AddConversationOption(conversation, "It sounds like you need a hand. How can I help?", "dlg_2_1")
		AddConversationOption(conversation, "Your conflict is none of my concern.")
		StartConversation(conversation, NPC, Spawn, "Stand your ground! I will defend Freeport to my dying breath! Are you friend or foe?")
	end

	if convo==3 then

	end
--]]
end

-------------------------------------------------------------------------------------------------------------------
--					QUEST_FROM_ZADDAR_GRAVEYARD
-------------------------------------------------------------------------------------------------------------------

function dlg_0_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_ZADDAR_GRAVEYARD, 1)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius002.mp3", "", "", 2619235941, 3755092214, Spawn)
	AddConversationOption(conversation, "What is going on here?", "dlg_1_1")
	AddConversationOption(conversation, "Defend it yourself.")
	StartConversation(conversation, NPC, Spawn, "Zaddar informed me how crucial your help was in repairing the ward in the Graveyard. The help of true heroes of Freeport like you is needed if we are to defend our city against this attack.")
end

-------------------------------------------------------------------------------------------------------------------
--					QUEST_FROM_KURDEK_SPRAWL
-------------------------------------------------------------------------------------------------------------------

function FromTheSprawl(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_KURDEK_SPRAWL, 1)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What is going on here?", "dlg_1_1")
	AddConversationOption(conversation, "Defend it yourself.")
	StartConversation(conversation, NPC, Spawn, "Zaddar informed me how you helped him keep the rival gangs of the Sprawl in check. The help of true heroes in Freeport like you is needed if we are to defend our city against the attack.")
end

-------------------------------------------------------------------------------------------------------------------
--					QUEST_FROM_THORSON_SUNKENCITY
-------------------------------------------------------------------------------------------------------------------

function FromSunkenCity(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_THORSON_SUNKENCITY, 1)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What is going on here?", "dlg_1_1")
	AddConversationOption(conversation, "Defend it yourself.")
	StartConversation(conversation, NPC, Spawn, "Thorson informed me how you helped uncover Curfield's plot to destroy Freeport. The help of true heroes of Freeport like you is needed if we are to defend our city against this attack.")
end

-------------------------------------------------------------------------------------------------------------------
--					QUEST 1
-------------------------------------------------------------------------------------------------------------------

function StandYourGround(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius001.mp3", "", "", 3910993894, 659100358, Spawn)
	AddConversationOption(conversation, "It sounds like you need a hand. How can I help?", "dlg_1_1")
	AddConversationOption(conversation, "Your conflict is none of my concern.")
	StartConversation(conversation, NPC, Spawn, "Stand your ground! I will defend Freeport to my dying breath! Are you friend or foe?")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius005.mp3", "", "", 1356974238, 3910566628, Spawn)
	if not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "Orcs, really?", "dlg_1_2")
		AddConversationOption(conversation, "Where did the orcs come from?", "dlg_1_3")
	end
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "You've entered a war zone, citizen. The Freeport Militia is here in force to defend our city. Two orc clans seem to be working together in an attempt to take over the Ruins and use it as a staging ground to attack Freeport.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius_solo007.mp3", "", "", 559510185, 2463184563, Spawn)
	AddConversationOption(conversation, "Yes, I would like to travel to the Commonlands.", "OfferQuest_Commonlands")
	AddConversationOption(conversation, "No, I'll stay here.  What about these orcs?", "dlg_1_3")
	AddConversationOption(conversation, "I think I will be going, Captain. Farewell.")
	StartConversation(conversation, NPC, Spawn, "You seem inexperienced.  Perhaps if you delivered something for me in the Commonlands, the journey would better prepare you for what lies beyond these walls. ")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius006.mp3", "", "", 1435383956, 2150191113, Spawn)
	AddConversationOption(conversation, "What are these tribes called?", "dlg_1_4")
	AddConversationOption(conversation, "I have no desire to mess around with orcs.")
	StartConversation(conversation, NPC, Spawn, "Both tribes have been lurking in the Ruins for some time, but they've never been this aggressive before. They seem to have become more organized and have obtained better weapons and armor.")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius007.mp3", "", "", 803622320, 3191751364, Spawn)
	AddConversationOption(conversation, "Why is this place called the Ruins?", "dlg_2_4")
	AddConversationOption(conversation, "What work do you have for me?", "dlg_2_12")
	AddConversationOption(conversation, "I think I will take my leave.")
	StartConversation(conversation, NPC, Spawn, "The weaker of the two tribes is called the Brokentusk. The stronger clan is known as the Lonetusk. I don't know much about their background personally, but my lieutenants stationed in the field may have more information.")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius008.mp3", "", "", 471952694, 1388761764, Spawn)
	AddConversationOption(conversation, "This place used to have grand houses and shops?", "dlg_2_5")
	AddConversationOption(conversation, "I don't want to hear any more.")
	StartConversation(conversation, NPC, Spawn, "Take a few steps inside the archway and you'll see why. This is an old section of Freeport that has long been abandoned. Its once stately manors and exclusive boutiques are now burned-out shells and broken walls.")
end

function dlg_2_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius009.mp3", "", "", 2311879676, 4148126515, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_2_6")
	AddConversationOption(conversation, "I've heard enough.")
	StartConversation(conversation, NPC, Spawn, "Oh yes. What we now call the Ruins was once known as Shoreside, an expensive and very exclusive residential district. It was favored by the wealthy for its ocean view and isolation from the hustle and bustle of the city, but the irony is that those very qualities led to its downfall.")
end

function dlg_2_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius010.mp3", "", "", 1270241224, 2005347889, Spawn)
	AddConversationOption(conversation, "What happened then?", "dlg_2_7")
	AddConversationOption(conversation, "I have no more time for old stories.")
	StartConversation(conversation, NPC, Spawn, "Freeport has come under attack many times, and our Militia maintains a strong presence in the Commonlands to fend off the Bloodskull orcs. During one particularly fierce battle, the bulk of our forces were committed to a frontal assault on the city gates.")
end

function dlg_2_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius011.mp3", "", "", 2984532909, 290696404, Spawn)
	AddConversationOption(conversation, "Couldn't the Militia save them?", "dlg_2_8")
	AddConversationOption(conversation, "I've heard enough. How can I help you defend the Ruins?", "dlg_2_12")
	AddConversationOption(conversation, "Too bad.")
	StartConversation(conversation, NPC, Spawn, "In an unusually clandestine move, the Brokentusk and Lonetusk tribes seized the opportunity to sneak into the Shoreside docks by nightfall. The cowardly beasts overpowered the small garrison left to defend the district, then proceeded to burn and pillage everything they found. Many noble citizens of Freeport died in that conflict.")
end

function dlg_2_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius012.mp3", "", "", 516488246, 2865302304, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_2_9")
	AddConversationOption(conversation, "What a pity.")
	StartConversation(conversation, NPC, Spawn, "As I said, most of our troops were busy fighting in the Commonlands. By the time reinforcements could be sent, the damage had been done. Since Shoreside was isolated and difficult to defend, it was decided that there was no sense in rebuilding it. The Sprawl serves as a buffer between the Ruins and the city proper, so Freeport remains secure. Still, there was a heavy price to be paid.")
end

function dlg_2_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius013.mp3", "", "", 2907233969, 819802352, Spawn)
	AddConversationOption(conversation, "So what became of the Ruins?", "dlg_2_10")
	AddConversationOption(conversation, "I've heard enough.")
	StartConversation(conversation, NPC, Spawn, "Even though the invaders were defeated, War Duke Eutarius, the high-ranking Militia officer who had been charged with the city's defense, was executed in the West Freeport plaza for his incompetence and failure. The Overlord does not tolerate mistakes.")
end

function dlg_2_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius014.mp3", "", "", 2462744754, 2263094364, Spawn)
	AddConversationOption(conversation, "What caused this change?", "dlg_2_11")
	AddConversationOption(conversation, "Sounds like you have work to do.")
	StartConversation(conversation, NPC, Spawn, "The once exclusive Shoreside became the Ruins, a broken-down home to beggars and squatters. Some remnants of the orc tribes remained as well, but they were so weak and disorganized that they posed little threat. In fact, this was a relatively calm area until quite recently.")
end

function dlg_2_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius015.mp3", "", "", 3872903634, 4159828807, Spawn)
	AddConversationOption(conversation, "How can I be of assistance?", "dlg_2_12")
	AddConversationOption(conversation, "I don't have any desire to help you.")
	StartConversation(conversation, NPC, Spawn, "I do not know, adventurer. Perhaps that is something you can help discover. But we must act quickly, lest these orcs rise up and do to the rest of Freeport what they once did to Shoreside.")
end

function dlg_2_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius016.mp3", "", "", 3389775257, 1638630596, Spawn)
	AddConversationOption(conversation, "I will do so.", "OfferQuest1")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "I must remain here to give assignments to incoming troops. Go through the archway and report to one of my lieutenants, Argosian. He will tell you how you can best serve our cause.")
end

function OfferQuest_Commonlands(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	--OfferQuest(NPC, Spawn, QUEST_COMMONLANDS)
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function dlg_2_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius018.mp3", "", "", 377300022, 2983031406, Spawn)
	AddConversationOption(conversation, "I'll go see him.")
	StartConversation(conversation, NPC, Spawn, "Lieutenant Argosian at the first outpost will be responsible for your initial training. Do not return to me until he has ordered you to do so.")
end

function OnQuest1(NPC, Spawn, conversation)
	if HasQuest(Spawn, QUEST_4_FROM_ARGOSIAN) or (HasCompletedQuest(Spawn, QUEST_4_FROM_ARGOSIAN) and not HasQuest(Spawn, QUEST_2)) then
		AddConversationOption(conversation, "I completed a number of tasks for the lieutenant. He sent me back to you to receive further orders.", "GoodWorkOrcActivity")
	end
	AddConversationOption(conversation, "Not yet, Captain.", "dlg_2_14")
	StartConversation(conversation, NPC, Spawn, "Have you completed your assignments for Lieutenant Argosian at the first outpost?")
end

function GoodWorkOrcActivity(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "No, we thought an ancient shrine might be behind it, but it turned out to be a dead end.", "RuleThatOut")
	AddConversationOption(conversation, "I'd rather not say.")
	StartConversation(conversation, NPC, Spawn, "Good work! Did you find out what's behind this increase in orc activity?")
end

function RuleThatOut(NPC, Spawn)
	if HasQuest(Spawn, QUEST_4_FROM_ARGOSIAN) then
		SetStepComplete(Spawn, QUEST_4_FROM_ARGOSIAN, 1)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you, Captain. Is there anything else I can do to aid the Militia?", "dlg_21_3")
	AddConversationOption(conversation, "I'm going to take my loot and go.")
	StartConversation(conversation, NPC, Spawn, "At least we can rule that out, but clearly further investigation is required. Here, help yourself to your choice of equipment from our supply chests. You should find something that will be of use in our continued efforts against the orc uprising.")
end

-------------------------------------------------------------------------------------------------------------------
--					QUEST 2
-------------------------------------------------------------------------------------------------------------------

function dlg_21_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius022.mp3", "", "", 1019790101, 3910654951, Spawn)
	AddConversationOption(conversation, "I am willing to do what is necessary to serve Freeport.", "dlg_21_4")
	AddConversationOption(conversation, "I think I will be leaving. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The next step in our investigation will be an arduous one. Although to this point you could journey alone, some parts of the Ruins can be deadly for the lone adventurer.")
end

function dlg_21_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius023.mp3", "", "", 2666224286, 3160996791, Spawn)
	AddConversationOption(conversation, "I will find some allies. What needs to be done?", "dlg_21_5")
	AddConversationOption(conversation, "I prefer to journey alone.")
	StartConversation(conversation, NPC, Spawn, "I knew you were daring!  My advice is to gather some comrades and form a group. There is safety in numbers, especially in places like this. As you venture further out into the world, you will find groups to be extremely helpful in achieving your goals.")
end

function dlg_21_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius025.mp3", "", "", 3573308808, 1112650571, Spawn)
	AddConversationOption(conversation, "So the Lonetusk are stronger?", "dlg_21_6")
	AddConversationOption(conversation, "I have no desire to face these orcs.")
	StartConversation(conversation, NPC, Spawn, "To be honest, I could tell that the Brokentusk were too weak to be behind the recent attacks. They have always followed the lead of their more powerful brethren, the Lonetusk orcs.")
end

function dlg_21_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius026.mp3", "", "", 3395408656, 1462645876, Spawn)
	AddConversationOption(conversation, "I am not afraid. What are your orders, Captain?", "dlg_21_7")
	AddConversationOption(conversation, "I'd best be leaving.")
	StartConversation(conversation, NPC, Spawn, "Yes, the Lonetusk are much more deadly. They are more inclined to work together, and this will require a strong group of adventurers to stand against them.")
end

function dlg_21_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius027.mp3", "", "", 2644659750, 71027369, Spawn)
	AddConversationOption(conversation, "I will report to her.", "OfferQuest2")
	AddConversationOption(conversation, "Time for me to go.")
	StartConversation(conversation, NPC, Spawn, "I need you to report to Lieutenant Imperidus, who is stationed at the second Militia outpost deeper in the Ruins. It is located to the west of here, near the gate to the Sprawl. She is heading up the Lonetusk investigation.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function OnQuest2(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius029.mp3", "", "", 2327537314, 879285291, Spawn)
	if HasQuest(Spawn, QUEST_4_FROM_LIEUTENANT_IMPERIDUS) then
		AddConversationOption(conversation, "I helped the lieutenant investigate the Lonetusk orcs.", "dlg_40_1")
	end
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you finished your assignments given by Lieutenant Imperidus at the second outpost?")
end

-------------------------------------------------------------------------------------------------------------------
--					QUEST_4_FROM_LIEUTENANT_IMPERIDUS
-------------------------------------------------------------------------------------------------------------------

function dlg_40_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius030.mp3", "", "", 669347507, 3609055382, Spawn)
	AddConversationOption(conversation, "It seems another tribe of orcs, the Rujarkians, are supplying them with weapons and training.", "dlg_40_2")
	AddConversationOption(conversation, "I prefer to keep that information private.")
	StartConversation(conversation, NPC, Spawn, "Well done. Did you discover the source of the orc uprising?")
end

function dlg_40_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius031.mp3", "", "", 2636650714, 3532932245, Spawn)
	if GetLevel(Spawn) < 50 then
		AddConversationOption(conversation, "Where are these Rujarkian orcs located?", "WhereLocated")
	end
	AddConversationOption(conversation, "Am I to be rewarded for my efforts?", "dlg_40_3")
	StartConversation(conversation, NPC, Spawn, "By the Overlord! This is vital information that I will send back to the Militia House immediately. It threatens the very security of Freeport!")
end

function WhereLocated(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Why does this information pose such a danger to Freeport?", "DangerToFreeport")
	StartConversation(conversation, NPC, Spawn, "The Rujarkian orcs are based out of the clefts in the Desert of Ro, a harsh region that lies to the south of our own continent of D'Lere. Perhaps when you are much more experienced than you are now, you will seek adventure there.")
end

function DangerToFreeport(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'm glad the information I obtained was useful.")
	StartConversation(conversation, NPC, Spawn, "The Rujarkian orcs are an extremely powerful and well-organized tribe. If the Rujarkians are supplying smaller groups like the Brokentusk and Lonetusk, it is only a matter of time before they provide weapons and armor to the Bloodskull orcs in the Commonlands. For all we know, such an alliance may already be forming.")
end

function dlg_40_3(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_4_FROM_LIEUTENANT_IMPERIDUS, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius034.mp3", "", "", 4219431602, 1872310999, Spawn)
	AddConversationOption(conversation, "Is there anything else I can do to be of service to Freeport?")
	StartConversation(conversation, NPC, Spawn, "Indeed, your efforts have aided Freeport greatly. To show our thanks, you may choose an additional reward from our supply chests. These items will serve you well.")
end

function dlg_40_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Yes, I will travel to the Commonlands.")
	AddConversationOption(conversation, "I think I will be going, Captain. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Our service to the Overlord is never finished. I know of some loyal citizens in the Commonlands who need your help. Are you interested?")
end

function FinishedQuestLine(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius037.mp3", "", "salute", 1359197915, 2412521722, Spawn)
	AddConversationOption(conversation, "Be well, Captain.")
	StartConversation(conversation, NPC, Spawn, "It is good to see you again, " .. GetName(Spawn) .. "! We are in your debt for helping uncover the source of the orc menace. Thanks to you, we are keeping the orcs at bay and I'm confident we will drive them out of the Ruins soon.")
end
