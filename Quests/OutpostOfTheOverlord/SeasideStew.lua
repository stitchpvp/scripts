--[[
	Script Name		:	SeasideStew.lua
	Script Purpose	:	Handles the quest, "Seaside Stew"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	11/24/2018
	Script Notes	:

	Zone			:	Outpost of the Overlord
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Seek out Chef Gorga outside the west gate.", 1, "I need to seek out Chef Gorga outside the west gate.  She should have some tasks for me to test out my combat skills.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke with Chef Gorga.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I reported to Chef Gorga and have been given my first task.")

	AddQuestStepKill(Quest, 2, "Kill the nearby bees to add to Gorga's stew.", 3, 100, "The first ingredient for the Seaside Stew is the nearby bees.  I need to kill some for Gorga.", 611, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I killed enough bees for the stew.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I killed enough bees for the first ingredient of Gorga's Seaside Stew.")

	AddQuestStepChat(Quest, 3, "Return to Chef Gorga.", 1, "I killed the bees that Gorga wants for her stew.  I should return to her now.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I returned to Chef Gorga.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned to Chef Gorga.")

	AddQuestStepKill(Quest, 4, "Kill elk for their livers.", 4, 100, "The second ingredient is elk livers. The elk roam throughout Seaside Glade, out past the barricades.", 611, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have gathered enough elk livers.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I gathered enough elk livers for Gorga's Seaside Stew.")

	AddQuestStepChat(Quest, 5, "Return the livers to Chef Gorga.", 1, "I've gathered the elk livers and need to return to Chef Gorga.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I gave the livers to Chef Gorga.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I returned to Chef Gorga with the elk livers for her stew.")

	AddQuestStepChat(Quest, 6, "Return to Tayil N'Velex.", 1, "I should return to Tayil N'Velex and let her know that I've finished helping Gorga.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I returned to Tayil N'Velex.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I returned to Tayil and was rewarded for my time with Chef Gorga.")

	UpdateQuestDescription(Quest, "I reported to Chef Gorga and gathered some ingredients for her Seaside Stew. Livers! Upon returning to Tayil, I was rewarded for my efforts.")
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
