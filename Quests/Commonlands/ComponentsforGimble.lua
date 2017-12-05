--[[
	Script Name		:	ComponentsforGimble.lua
	Script Purpose	:	Handles the quest, "Components for Gimble"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:

	Zone			:	Commonlands
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect Strongbox Deceiver meat", 5, 100, "I'm searching for components that Gimble Cognoggin needs me to retrieve in the Wailing Caves. ", 320, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found some Strongbox Deceiver meat.")

	AddQuestStepKill(Quest, 2, "I need to collect goo from a Primordial Menace", 5, 100, "I'm searching for components that Gimble Cognoggin needs me to retrieve in the Wailing Caves. ", 8, nil)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've collected the Primordial Menace goo.")

	AddQuestStepKill(Quest, 3, "I need to collect essence from a Shin`Ree Spiritist", 5, 100, "I'm searching for components that Gimble Cognoggin needs me to retrieve in the Wailing Caves. ", 182, nil)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've collected the Spiritist's essence.")

	AddQuestStepKill(Quest, 4, "I need to collect an egg sac from a Lurid Ripper", 5, 100, "I'm searching for components that Gimble Cognoggin needs me to retrieve in the Wailing Caves. ", 144, nil)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've collected the Lurid Ripper's egg sack.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've collected the components for Gimble Cognoggin's potion.")

	AddQuestStepChat(Quest, 5, "I still need to return to Gimble Cognoggin to give him the components", 1, "I still need to return to Gimble Cognoggin to give him the components.", 11, nil)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I've spoken with Gimble Cognoggin after finding all the components he needed.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with Gimble Cognoggin after finding all the components he needed.")

	UpdateQuestDescription(Quest, "Having delved deeply into the Wailing Caves, I can now say that goo is disgusting!  That place is filled with slime and skeletons.  But I did see something that piqued my interest. There were a couple of live orcs in that cave of a clan named the Ree.  I wonder what they're doing there.")
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
