--[[
	Script Name		:	TheFrenzyoftheBloodskulls.lua
	Script Purpose	:	Handles the quest, "The Frenzy of the Bloodskulls"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:	

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill 7 Bloodskull warriors.", 7, 100, "I need to kill some Bloodskull orcs and collect some samples of the frenzy root.", 611, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain 7 Bloodskull warriors.")

	AddQuestStepKill(Quest, 2, "I need to kill 3 Bloodskull priests", 3, 100, "I need to kill some Bloodskull orcs and collect some samples of the frenzy root.", 611, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have slain 3 Bloodskull priests.")

	AddQuestStepHarvest(Quest, 3, "I need to collect five samples of Bloodskull Frenzy Root", 5, 100, "I need to kill some Bloodskull orcs and collect some samples of the frenzy root.", 197, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected five Bloodskull Frenzy Root samples.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the orcs and collected the root samples.")

	AddQuestStepChat(Quest, 4, "I need to return to Rainus", 1, "Now that I have done as he asked, I should return to Rainus Canton.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Rainus.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Rainus Canton.")

	UpdateQuestDescription(Quest, "I have collected the root samples for Rainus. He was appreciative.")
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