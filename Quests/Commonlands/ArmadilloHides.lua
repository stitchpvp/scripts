--[[
	Script Name		:	ArmadilloHides.lua
	Script Purpose	:	Handles the quest, "Armadillo Hides"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:

	Zone			:	Commonlands
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect ten armadillo hides for Gerun", 10, 100, "I need to collect the armadillo hides for Gerun.", 2047, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the armadillo hides.")

	AddQuestStepChat(Quest, 2, "I need to bring these hides to Gerun", 1, "I need to collect the armadillo hides for Gerun.", 11, nil)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Gerun the hides.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have given Gerun the armadillo hides.")

	UpdateQuestDescription(Quest, "I have given Gerun the armadillo hides. He thanked me and paid me my cut.")
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
