--[[
	Script Name		:	QuenchingTheirThirst.lua
	Script Purpose	:	Handles the quest, "Quenching Their Thirst"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:	

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to fill a flask with water from a freshwater lake far to the west", 1, "Madam Vi wants me to fill three flasks: one with water from a freshwater lake, one from a river, and one from the sea.", 310, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have filled a flask with lake water.")

	AddQuestStepLocation(Quest, 2, "I need to fill a flask with water from a nearby river west of the Crossroads", 1, "Madam Vi wants me to fill three flasks: one with water from a freshwater lake, one from a river, and one from the sea.", 310, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have filled a flask with water from a nearby river.")

	AddQuestStepLocation(Quest, 3, "I need to fill a flask with water from the sea to the northeast", 1, "Madam Vi wants me to fill three flasks: one with water from a freshwater lake, one from a river, and one from the sea.", 310, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have filled a flask with water from the sea.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have the three filled flasks for Madam Vi at the Crossroads.")

	AddQuestStepChat(Quest, 4, "I should return to Madam Vi at the Crossroads", 1, "I have filled the flasks for Madam Vi.", 310, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have filled the flasks and returned them to Madam Vi.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned the three flasks to Madam Vi at the Crossroads.")

	UpdateQuestDescription(Quest, "I filled the three flasks for Madam Vi.")
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