--[[
	Script Name		:	Achoo!AntonicanPepper.lua
	Script Purpose	:	Handles the quest, "Achoo! Antonican Pepper"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:

	Zone			:	Antonica
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find Merchant Novak.", 1, "Matsy needs pepper for her chowder from Merchant Novak.", 797, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the pepper.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I acquired the pepper from Merchant Novak.")

	AddQuestStepChat(Quest, 2, "I must return to Matsy.", 1, "I have the pepper and should now return to Matsy.", 797, nil)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Matsy the pepper for her chowder.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given the pepper to Matsy.")

	UpdateQuestDescription(Quest, "I helped Matsy finish her cooking by fetching some more pepper from Merchant Novak. She seemed very busy. I wonder if she needs any more help.")
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
