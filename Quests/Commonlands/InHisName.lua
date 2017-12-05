

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Gerun Pontian", 1, "I need to speak with Gerun Pontian.", 11, nil)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Gerun Pontian.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Gerun Pontian.")

	UpdateQuestDescription(Quest, "I have found Gerun Pontian. He is interested in providing work for me while I am in the Commonlands.")
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
