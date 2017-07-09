--[[
	Script Name		:	RunningOutofBeer.lua
	Script Purpose	:	Handles the quest, "Running Out of Beer"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:	

	Zone			:	Antonica
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "I must get an ale from upstairs.", 1, 100, "I need to go upstairs and get an ale for Haddek from the keg.", 308, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gotten an ale from upstairs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gone upstairs and acquired an ale for Haddek.")

	AddQuestStepChat(Quest, 2, "Deliver the ale to Haddek.", 1, "I must give this ale to Haddek.", 308, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have delivered the ale to Haddek.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given the ale to Haddek.")

	UpdateQuestDescription(Quest, "I have given Haddek his ale.  Maybe now I can get him to give me some work.")
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