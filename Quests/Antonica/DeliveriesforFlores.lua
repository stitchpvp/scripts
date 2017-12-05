--[[
	Script Name		:	DeliveriesforFlores.lua
	Script Purpose	:	Handles the quest, "Deliveries for Flores"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:

	Zone			:	Antonica
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to deliver a crate to Merchant Novak.", 1, "I must deliver a crate of Flores' merchandise to Merchant Novak by the lighthouse.", 654, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've delivered the crate to Merchant Novak.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've delivered the crate to Novak and picked up her pouch.")

	AddQuestStepChat(Quest, 2, "I need to deliver a crate to Merchant Geddard.", 1, "I must deliver a crate of Flores' merchandise to Merchant Geddard in Gnollslayer Keep.", 654, nil)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've delivered the crate to Merchant Geddard.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've delivered the crate to Geddard and picked up his pouch.")

	AddQuestStepChat(Quest, 3, "I need to deliver the pouches to Merchant Flores.", 1, "I must deliver both Novak and Geddard's pouches to Flores outside of Qeynos.", 401, nil)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've delivered the pouches to Merchant Flores.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've delivered Novak and Geddard's pouches to Flores.")

	UpdateQuestDescription(Quest, "I managed to deliver both crates and bring back Novak and Geddard's pouches to Flores. Those crates just about broke my back! But I suppose not many want to trudge out there with supplies, so every run has got to count.")
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
