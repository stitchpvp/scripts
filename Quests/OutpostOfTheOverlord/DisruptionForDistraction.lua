--[[
	Script Name		:	DisruptionforDistraction.lua
	Script Purpose	:	Handles the quest, "Disruption for Distraction"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	12/1/2018
	Script Notes	:

	Zone			:	Outpost of the Overlord
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Seek out Coercer Zlith at the camp in west Seaside Glade.", 1, "I need to speak with Coercer Zlith at the camp in west Seaside Glade. He will have details regarding the Tunarian mine.", 11, 2780072)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke with Coercer Zlith.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I spoke with Coercer Zlith at the camp in west Seaside Glade.")

	AddQuestStepKill(Quest, 2, "Kill Tunarian miners at the mine in the eastern Wilderwood.", 3, 100, "I need to head to the Tunarian mine and cause the disruption. The mine is in the eastern Wilderwood.", 611, 2780052)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I killed enough Tunarian miners.")

	AddQuestStepHarvest(Quest, 3, "Retrieve glimmering ore samples near the mine.", 2, 100, "I need to head to the Tunarian mine and cause the disruption. The mine is in the eastern Wilderwood.", 1118, 2780176)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I retrieved enough ore samples.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I killed the miners and retrieved the ore samples that Coercer Zlith requested.")

	AddQuestStepChat(Quest, 4, "Return to Coercer Zlith.", 1, "I've caused some havoc at the mine and should return to Coercer Zlith now.", 11, 2780072)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I returned to Coercer Zlith.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned and spoke to Coercer Zlith.")

	AddQuestStepKill(Quest, 5, "Kill Tunarian horse sentries in the Wilderwood.", 2, 100, "To cause a bigger distraction and take my revenge for their meddling, I should head back into the Wilderwood and slay some of the Tunarian horse sentries.", 2595, 2780070)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I killed enough horse sentries.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I took out the horse sentries in the Wilderwood. This should really stir up the hornet's nest.")

	AddQuestStepChat(Quest, 6, "Return to Coercer Zlith.", 1, "I've killed the horse sentries and should return to Coercer Zlith.", 11, 2780072)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
  SetCompleteFlag(Quest)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I returned to Coercer Zlith.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I returned to Coercer Zlith.")

	UpdateQuestDescription(Quest, "I talked with Coercer Zlith at the camp in Seaside Glade and was given details on how to cause the distraction at the Tunarian Mine. I attacked the mine and retrieved some ore samples for Tayil, and then took out some horse sentries for good measure. Zlith said that the distraction worked and forces were being sent to check on my havoc.  We should now be ready for our final assault.")
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
