--[[
	Script Name		:	BloodskullIntentions.lua
	Script Purpose	:	Handles the quest, "Bloodskull Intentions"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:	

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill 4 Bloodskull tower guards", 4, 100, "I need to kill some orc tower guards and get a copy of the orcish orders.", 611, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain 4 Bloodskull tower guards.")

	AddQuestStepObtainItem(Quest, 2, "I need to collect the Bloodskull standing orders", 1, 100, "I need to kill some orc tower guards and get a copy of the orcish orders.", 75, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected the Bloodskull standing orders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I killed the orcs and obtained a copy of their orders.")

	AddQuestStepChat(Quest, 3, "I need to return to Rainus", 1, "Now that I have done as he asked, I should return to Rainus Canton.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Rainus.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Rainus Canton.")

	UpdateQuestDescription(Quest, "I slew the tower guards, collected the orders, and returned them to Rainus.")
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