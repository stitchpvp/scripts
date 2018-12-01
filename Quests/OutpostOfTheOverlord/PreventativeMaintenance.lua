--[[
	Script Name		:	PreventativeMaintenance.lua
	Script Purpose	:	Handles the quest, "Preventative Maintenance"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	11/24/2018
	Script Notes	:

	Zone			:	Outpost of the Overlord
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Talk to Assassin Vamir at the camp in western Seaside Glade.", 1, "I need to find Assassin Vamir in western Seaside Glade. He should have a mission for me.", 11, 2780073)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke with Assassin Vamir.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I reported to Assassin Vamir and was given my first task.")

	AddQuestStepKill(Quest, 2, "Kill wilderbears. They can be found north in the Wilderwood or west in Cliffdiver Canyon.", 4, 100, "To prevent the Tunarians from recruiting more animals once the attack has begun, I need to take out the animals they use. Bears are up first on the list. I can find bears north up the slope in the Wilderwood, or west in Cliffdiver Canyon.", 611, 2780069, 2780071, 2780080)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I killed enough bears.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I killed enough bears to hopefully thwart any training attempts.")

	AddQuestStepChat(Quest, 3, "Return to Assassin Vamir.", 1, "I killed enough bears and I should return to Assassin Vamir at the camp in Seaside Glade.", 11, 2780073)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I returned to Assassin Vamir.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned to Assassin Vamir.")

	AddQuestStepKill(Quest, 4, "Lure down hawks to kill in Cliffdiver Canyon to the west. I must examine and then release a mole rat in my inventory as bait when I'm in position under a hawk.", 3, 100, "I now need to kill hawks. Vamir gave me some mole rats to use as bait to lure down the hawks that perch high above on the cliffs. When I am in position, I need to examine the molerats in my inventory and then release one. Hopefully it works to lure down the hawks so I can take them out.", 611, 2780077)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have lured down and killed enough hawks.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I used the mole rats to lure down some hawks and take them out.")

	AddQuestStepChat(Quest, 5, "Return to Assassin Vamir.", 1, "I've killed enough hawks and should now return to Assassin Vamir.", 11, 2780073)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I returned to Assassin Vamir.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I returned to Assassin Vamir.")

	UpdateQuestDescription(Quest, "I reported to Assassin Vamir in Seaside Glade. It turns out the Tunarians on the island are masters of the animals here. To prevent them from gaining extra recruits when the attack happens, I helped to thin out the bears and hawks that they might use. I returned to Tayil after my missions with Vamir were complete and was rewarded.")
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
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end
