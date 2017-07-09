--[[
	Script Name		:	ProofisinthePudding.lua
	Script Purpose	:	Handles the quest, "Proof is in the Pudding"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:	

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to find The Graveyard entrance north of the Freeport gates", 1, "I am tasked with exploring The Commonlands. I am to find the entrance to The Graveyard, a tower far to the southeast of the crossroads near a river, the killer wasp mound, the Wailing Caves and the entrance to Nektulos Forest.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found The Graveyard.")

	AddQuestStepLocation(Quest, 2, "I need to find an old tower far to the southeast, near a river", 1, "I am tasked with exploring The Commonlands. I am to find the entrance to The Graveyard, a tower far to the southeast of the crossroads near a river, the killer wasp mound, the Wailing Caves and the entrance to Nektulos Forest.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found the old tower near the river.")

	AddQuestStepLocation(Quest, 3, "I need to find the killer wasp mound southwest of the Crossroads", 1, "I am tasked with exploring The Commonlands. I am to find the entrance to The Graveyard, a tower far to the southeast of the crossroads near a river, the killer wasp mound, the Wailing Caves and the entrance to Nektulos Forest.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found the killer wasp mound southwest of the Crossroads.")

	AddQuestStepLocation(Quest, 4, "I need to find The Wailing Caves north of the Crossroads", 1, "I am tasked with exploring The Commonlands. I am to find the entrance to The Graveyard, a tower far to the southeast of the crossroads near a river, the killer wasp mound, the Wailing Caves and the entrance to Nektulos Forest.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I found The Wailing Caves.")

	AddQuestStepLocation(Quest, 5, "I need to find the entrance to Nektulos Forest far to the west", 1, "I am tasked with exploring The Commonlands. I am to find the entrance to The Graveyard, a tower far to the southeast of the crossroads near a river, the killer wasp mound, the Wailing Caves and the entrance to Nektulos Forest.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have found the entrance to Nektulos.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I was able to locate all of the areas Feterman spoke of.")

	AddQuestStepChat(Quest, 6, "I should speak with J.P. Feterman", 1, "I have explored The Commonlands. I should return to J.P. Feterman.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I spoke with J.P. Feterman.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to J.P. Feterman at the Crossroads.")

	UpdateQuestDescription(Quest, "I have explored the commonlands.  I should return to J.P. Feterman at the Crossroads.")
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