--[[
	Script Name		:	UnderaShadyTree.lua
	Script Purpose	:	Handles the quest, "Under a Shady Tree"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:	

	Zone			:	Antonica
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "I am looking for some flowers under a shady tree.", 1, 100, "I need to gather flowers for Landwyn. He mentioned they were under a shady tree nearby.", 1943, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the flowers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the flowers for Landwyn.")

	AddQuestStepChat(Quest, 2, "I should return these flowers to Landwyn.", 1, "I should return these flowers to Landwyn before they are wilted.", 1943, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave Landwyn the flowers.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Landwyn thought the flowers were perfect.")

	UpdateQuestDescription(Quest, "I have picked and delivered the flowers to Landwyn.")
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