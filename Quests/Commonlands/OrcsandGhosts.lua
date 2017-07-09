--[[
	Script Name		:	OrcsandGhosts.lua
	Script Purpose	:	Handles the quest, "Orcs and Ghosts"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:	

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay ten ghostly orcs", 10, 100, "I need to kill ten ghostly orcs.", 611, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the ghostly orcs.")

	AddQuestStepChat(Quest, 2, "I need to return to Gerun", 1, "I need to kill ten ghostly orcs.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Gerun.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the orcs.")

	UpdateQuestDescription(Quest, "I have slain the ghostly orcs for Gerun. He thanked me and paid me what he would've made for the task.")
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