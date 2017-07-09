--[[
	Script Name		:	BloodskullDisruption.lua
	Script Purpose	:	Handles the quest, "Bloodskull Disruption"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:	

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepSpell(Quest, 1, "I need to disrupt the southern Bloodskull offensive encampment", 1, 100, "I need to disrupt the orc encampments south of the kerran and ratonga communities.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have disrupted the southern Bloodskull offensive encampment.")

	AddQuestStepSpell(Quest, 2, "I need to disrupt the northern Bloodskull offensive encampment", 1, 100, "I need to disrupt the orc encampments south of the kerran and ratonga communities.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have disrupted the northern Bloodskull offensive encampment.")

	AddQuestStepSpell(Quest, 3, "I need to destroy 5 boxes of Bloodskull supplies", 5, 100, "I need to disrupt the orc encampments south of the kerran and ratonga communities.", 655, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have destroyed 5 boxes of Bloodskull supplies.")

	AddQuestStepSpell(Quest, 4, "I need to destroy the orc siege tower", 1, 100, "I need to disrupt the orc encampments south of the kerran and ratonga communities.", 2339, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have destroyed the orc siege tower.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have disrupted the orc encampments.")

	AddQuestStepChat(Quest, 5, "I need to return to Rainus", 1, "Now that I have done as he asked, I should return to Rainus Canton.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I have spoken with Rainus.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Rainus Canton.")

	UpdateQuestDescription(Quest, "I have destroyed the orc supplies and siege tower and slain the orcs in the encampments. Rainus rewarded me for my work.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end