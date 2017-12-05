--[[
	Script Name		:	CrackPot.lua
	Script Purpose	:	Handles the quest, "Crack Pot"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:

	Zone			:	Commonlands
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepHarvest(Quest, 1, "Collect iron clusters from cloven ore", 5, 100, "I need to collect iron clusters here in the Commonlands so Mooshga can repair her cracked pot.", 1085, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected five iron clusters.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected five irons clusters.")

	AddQuestStepChat(Quest, 2, "I should return to Mooshga", 1, "I should return to Mooshga outside of Freeport.", 11, nil)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave Mooshga the iron clusters.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to Mooshga.")

	UpdateQuestDescription(Quest, "I gave the five iron clusters to Mooshga.")
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
