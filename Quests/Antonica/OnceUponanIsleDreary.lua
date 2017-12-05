--[[
	Script Name		:	OnceUponanIsleDreary.lua
	Script Purpose	:	Handles the quest, "Once Upon an Isle Dreary"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:

	Zone			:	Antonica
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Slay dankfur gnolls.", 4, 100, "I must swim to the isles off the southwest coast of Antonica. There I will slay dankfur gnolls.", 75, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Got four poems.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I swam to the isles off the southwest coast of Antonica. There I slew dankfur gnolls to gain the four poems.")

	AddQuestStepChat(Quest, 2, "Speak to Quallium.", 1, "I must return the poems to Quallium in southwest Antonica.", 11, nil)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "Spoke to Quallium.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned the poems to Quallium in southwest Antonica.")

	UpdateQuestDescription(Quest, "I retrieved all four poems from the gnolls on the isles. I gave the poems to Quallium.")
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
