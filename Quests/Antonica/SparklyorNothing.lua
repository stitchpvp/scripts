--[[
	Script Name		:	SparklyorNothing.lua
	Script Purpose	:	Handles the quest, "Sparkly or Nothing"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:

	Zone			:	Antonica
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to hunt granitescale basilisks.", 10, 100, "Licha has asked me to hunt granitescale basilisks to get the shiniest scales I can find.", 84, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found the scales.")

	AddQuestStepKill(Quest, 2, "To make these scales even shinier, I could use the oils that come from darkclaw crabs.", 1, 100, "Licha has asked me to hunt granitescale basilisks to get the shiniest scales I can find.", 139, nil)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have made these scales very shiny.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found some very shiny scales.")

	AddQuestStepChat(Quest, 3, "I should take these scales to Licha.", 1, "I found the scales that Licha wanted. I should probably take them to her.", 84, nil)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have given the scales to Licha.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave Licha the scales.")

	UpdateQuestDescription(Quest, "I have returned the scales to Licha.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end
