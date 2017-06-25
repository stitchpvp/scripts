--[[
	Script Name	: Quests/SunkenCity/lukurs_antiques.lua
	Script Purpose	: Handles the quest, "Lukur's Antiques"
	Script Author	: Scatman
	Script Date	    : 2009.08.01
	
	Zone       : Sunken City
	Quest Giver: Lukur
	Preceded by: None
	Followed by: None
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to find the Blood Mask.", 1, 100, "I need to find three ceremonial masks.", 878)
	AddQuestStep(Quest, 2, "I need to find the Shadowed Mask.", 1, 100, "I need to find three ceremonial masks.", 879)
	AddQuestStep(Quest, 3, "I need to find the Dawn Mask.", 1, 100, "I need to find three ceremonial masks.", 880)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_FoundMask1")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_FoundMask2")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_FoundMask3")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/optional1/lukur/fprt_adv01_sunken/lukur002.mp3", "", "", 2636400793, 1337735741, Player)
	AddConversationOption(conversation, "Thanks, I'll start searching the area.")
	StartConversation(conversation, QuestGiver, Player, "I need to add a few specific relics to my collection.  Return when you fulfill my order.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_FoundCoins(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the Blood Mask.")
	
	if QuestIsComplete(Player, 276) then
		FoundAllMasks(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_FoundMask2(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found the Shadowed Mask.")
	
	if QuestIsComplete(Player, 276) then
		FoundAllMasks(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_FoundMask3(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found the Dawn Mask.")
	
	if QuestIsComplete(Player, 276) then
		FoundAllMasks(Quest, QuestGiver, Player)
	end
end

function FoundAllMasks(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I found three ceremonial masks.")

	AddQuestStepChat(Quest, 4, "I need to return to Lukur.", 1, "I need to return to Lukur.", 0, 1240019)
	AddQuestStepCompleteAction(Quest, 4, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I returned to Lukur.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Lukur.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I found the three ceremonial masks that Lukur needed.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_FoundCoins(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_FoundMask2(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_FoundMask3(Quest, QuestGiver, Player)
	end
end