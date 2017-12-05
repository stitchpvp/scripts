--[[
	Script Name		:	Tillin'sGnollWoes.lua
	Script Purpose	:	Handles the quest, "Tillin's Gnoll Woes"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:

	Zone			:	Antonica
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Gather ore samples from Sabertooth miners and excavators in Blackburrow.", 5, 100, "I need to gather the items required by Sergeant Tillin.", 1164, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've gathered the ore samples I needed.")

	AddQuestStepKill(Quest, 2, "Find a set of the plans the Sabertooth tacticians in Blackburrow are going to use.", 1, 100, "I need to gather the items required by Sergeant Tillin.", 185, nil)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've found a set of the plans Tillin needed.")

	AddQuestStepKill(Quest, 3, "Gather three of the rune stones from the Sabertooth Diviners in Blackburrow.", 3, 100, "I need to gather the items required by Sergeant Tillin.", 373, nil)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've gathered the rune stones Tillin wanted.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered the items Sergeant Tillin needed.")

	AddQuestStepChat(Quest, 4, "Speak with Sergeant Tillin at Gnollslayer Keep in Antonica.", 1, "I need to return to Sergeant Tillin with what I've found.", 11, nil)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I've spoken with Sergeant Tillin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with Sergeant Tillin.")

	UpdateQuestDescription(Quest, "I've gathered all the items that Sergeant Tillin needed.")
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
