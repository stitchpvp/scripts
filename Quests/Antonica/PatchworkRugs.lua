--[[
	Script Name		:	PatchworkRugs.lua
	Script Purpose	:	Handles the quest, "Patchwork Rugs"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:

	Zone			:	Antonica
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill some bears.", 10, 100, "I must kill some bears for their pelts.", 93, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed enough bears.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered several bear pelts.")

	AddQuestStepChat(Quest, 2, "Speak to Hartok.", 1, "I must deliver these pelts to Hartok.", 11, nil)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken to Hartok.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given Hartok the pelts that I have gathered.")

	UpdateQuestDescription(Quest, "I have acquired several pelts for Hartok.")
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
