--[[
	Script Name		:	VentarT'Kal.lua
	Script Purpose	:	Handles the quest, "Ventar T'Kal"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/9/2017
	Script Notes	:

	Zone			:	Commonlands
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Ventar T'Kal", 1, "", 11, nil)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Ventar T'Kal.")
	-- UpdateQuestTaskGroupDescription(Quest, 1, )

	UpdateQuestDescription(Quest, "I have delivered the treated root samples to Ventar.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end
