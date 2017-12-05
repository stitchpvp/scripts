--[[
	Script Name		:	OrcsoftheRee.lua
	Script Purpose	:	Handles the quest, "Orcs of the Ree"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/9/2017
	Script Notes	:

	Zone			:	Commonlands
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to place some Bloodskull Frenzy Root near 5 living Ree orcs", 5, "I need to use the treated root samples to corrupt some Ree orcs. I also need a current copy of their orders.", 197, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have let 5 orcs taste the Bloodskull Frenzy Root.")

	AddQuestStepKill(Quest, 2, "I need to obtain a recent copy of the orders for the Ree orcs west of Dog Trapper Lake/", 1, 100, "I need to use the treated root samples to corrupt some Ree orcs. I also need a current copy of their orders.", 75, nil)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have obtained a copy of the Ree orders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have corrupted the Ree orcs and obtained the orders.")

	AddQuestStepChat(Quest, 3, "I need to return to Ventar", 1, "Now that I have done as he asked, I should return to Ventar.", 11, nil)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Ventar.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Ventar.")

	UpdateQuestDescription(Quest, "I corrupted the Ree orcs with the frenzy root. I also gave Ventar the up to date orders he wanted.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end
