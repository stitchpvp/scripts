--[[
	Script Name		:	Wisp-erSweetNothings.lua
	Script Purpose	:	Handles the quest, "Wisp-er Sweet Nothings"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:

	Zone			:	Commonlands
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill wisps for their essence", 10, 100, "I have offered to help Mooshga get wisp essences for her wisp tofu.", 145, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected ten wisp essences.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have Mooshga's wisp essences.")

	AddQuestStepChat(Quest, 2, "I have the essences Mooshga wanted", 1, "I should return to Mooshga outside of the Freeport gates.", 11, nil)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned to Mooshga.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to Mooshga.")

	UpdateQuestDescription(Quest, "I collected ten wisp essences and returned to Mooshga.")
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
