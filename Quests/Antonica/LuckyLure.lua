--[[
	Script Name		:	LuckyLure.lua
	Script Purpose	:	Handles the quest, "Lucky Lure"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:

	Zone			:	Antonica
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Find Blarton's fishing lure.", 1, 100, "I should search for Blarton's lost lure along the beach north of Windstalker Village in Antonica.", 1037, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found Blarton's fishing lure.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found the lost fishing lure.")

	AddQuestStepChat(Quest, 2, "Return Blarton's lost fishing lure.", 1, "I have found the missing lure and must return it to Blarton in Windstalker Village.", 1037, nil)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I brought the lure back to Blarton.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned Blarton's fishing lure.")

	UpdateQuestDescription(Quest, "I have retrieved Blarton's lost fishing lure and returned it to him. He seemed very happy about it. I wonder if he needs help with anything else.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end
