--[[
	Script Name		:	TheMysteriousMissingShipment.lua
	Script Purpose	:	Handles the quest, "The Mysterious Missing Shipment"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:	

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should speak to Nethet about Brandus's shipment", 1, "Brandus directed me to an individual named Nethet who frequents the City of Freeport gates in the Commonlands.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have asked Nethet if he knows anything about Brandus' shipment.")

	AddQuestStep(Quest, 2, "I need to complete Nethet's tasks for more information", 1, 100, "Brandus directed me to an individual named Nethet who frequents the City of Freeport gates in the Commonlands.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have helped Nethet. His information was very useful.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken to Nethet and done everything he asked before he finally gave up the information I was looking for.")

	AddQuestStepChat(Quest, 3, "I need to return to Brandus", 1, "I should return to Brandus and let him know that it is the Dervish Cutthroats that have his shipment, and his sorcerer.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have told Brandus the Dervish have his cargo.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have told Brandus that his shipment is being held by the Dervish Cutthroats.  He did not seem to be happy with the news.")

	UpdateQuestDescription(Quest, "I found the &quot;shipment&quot; Brandus was referring to.  He has been selling refugees back to a captain in the Far Seas Trading Company with their memories erased or altered.")
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