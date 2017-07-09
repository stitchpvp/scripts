
function Init(Quest)
	AddQuestStep(Quest, 1, "I need to collect six small emerald beetle shells", 6, 100, "I need to collect the beetle shells for Gerun.", 162)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the beetle shells.")

	AddQuestStepKill(Quest, 2, "I need to bring these beetle shells to Gerun", 1, 100, "I need to collect the beetle shells for Gerun.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Gerun the shells.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the beetle shells.")

	UpdateQuestDescription(Quest, "Gerun paid me for the beetle shells I gave him.")
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