--[[
	Script Name		:	AFrontierslady'sTask.lua
	Script Purpose	:	Handles the quest, "A Frontierslady's Task"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:

	Zone			:	Antonica
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to Sighard Sayer.", 1, "I must run to Sayer's Outfitters in Antonica and speak to Sighard Sayer.", 11, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Spoke to Sighard Sayer.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I made it to Sayer's Outfitters and spoke to Sighard.")

	AddQuestStepChat(Quest, 2, "Speak to Dancer.", 1, "I must return to Dancer near the Qeynos Hills Claymore in Antonica.", 364, nil)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Spoke to Dancer.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Dancer near the Qeynos Hills Claymore in Antonica.")

	AddQuestStepSpell(Quest, 3, "Inspect the dummy.", 1, 100, "I must place the arrow onto the training dummy with a green arrow painted on it found in Archer Woods.", 11, nil)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Inspected the dummy.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I placed the arrow onto the dummy with a green arrow painted on it found in Archer Woods.")

	AddQuestStepChat(Quest, 4, "Speak to Dancer.", 1, "I must return to Dancer near the Qeynos Hills Claymore in Antonica.", 11, nil)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "Spoke to Dancer.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I returned to Dancer near the Qeynos Hills Claymore in Antonica.")

	UpdateQuestDescription(Quest, "I performed some errands for the outlander named Dancer. She would not mention what it was all about, but it was very curious.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end
