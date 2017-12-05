--[[
	Script Name		:	QuelltheUndead.lua
	Script Purpose	:	Handles the quest, "Quell the Undead"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/9/2017
	Script Notes	:

	Zone			:	Commonlands
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill fifteen orc skeletons", 15, 100, "I'm destroying the risen skeletons of orc warriors in the Wailing Caves for Ronam Olansk.", 611, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the orc skeletons.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've destroyed enough orc skeletons in the Wailing Caves to satisfy Ronam Olansk's needs for now.")

	AddQuestStepChat(Quest, 2, "I must return to speak with Ronam Olansk", 1, "I must return to Ronam Olansk at the nomad camp to inform him of the completion of his task.", 11, nil)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Ronam Olansk.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned to the nomad camp and spoken with Ronam Olansk.")

	UpdateQuestDescription(Quest, "I drove back the undead to protect the nomads, though I feel they shall soon return.  Those souls shall never rest for long, I fear.  Ronam Olansk kept to his word and rewarded me for my effort, though I believe they may be in vain should he not relocate his people.")
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
