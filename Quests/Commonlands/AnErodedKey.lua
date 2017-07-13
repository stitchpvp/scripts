--[[
	Script Name		:	AnErodedKey.lua
	Script Purpose	:	Handles the quest, "An Eroded Key"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/13/2017
	Script Notes	:	

	Zone			:	Access Quests
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill a Bloodskull messenger", 1, 100, "I need to kill the Bloodskull messenger. He was last seen wandering east of the Val Mar ruins.", 75, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I killed a Bloodskull messenger.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed the Bloodskull messenger and discovered a map of different mineral deposits.")

	AddQuestStepHarvest(Quest, 2, "I must locate the shimmering mineral deposit in the Commonlands around the Bloodskull Valley", 1, 100, "I am searching for a collection of magical mineral deposits.", 1135, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected a piece of ore from the shimmering mineral deposit in the Commonlands.")

	AddQuestStepHarvest(Quest, 3, "I must locate the plentiful mineral deposit in the Commonlands around the Bloodskull Valley", 1, 100, "I am searching for a collection of magical mineral deposits.", 1122, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected a piece of ore from the plentiful mineral deposit in the Commonlands.")

	AddQuestStepHarvest(Quest, 4, "I must locate the chipped mineral deposit in the Commonlands around the Bloodskull Valley", 1, 100, "I am searching for a collection of magical mineral deposits.", 1136, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have collected a piece of ore from the chipped mineral deposit in the Commonlands.")

	AddQuestStepHarvest(Quest, 5, "I must locate the glowing mineral deposit in the Commonlands around the Bloodskull Valley", 1, 100, "I am searching for a collection of magical mineral deposits.", 1132, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have collected a piece of ore from the glowing mineral deposit in the Commonlands.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have collected all the necessary ore from the magical mineral deposits and formed a crystallized key.")

	AddQuestStepChat(Quest, 6, "I need to return to the fallen blackguard now. He will be pleased to know I defeated the Bloodskull messenger and discovered what the messenger was looking for.", 1, "I need to return to the fallen blackguard now so that he may know that I retrieved the ore samples.", 1008, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I've spoken to the fallen blackguard and fashioned a key that will allow me access to the Bloodskull excavation site.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have spoken to the fallen blackguard.")

	UpdateQuestDescription(Quest, "I've completed this quest.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end