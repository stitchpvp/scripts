--[[
	Script Name		:	TheKeepoftheArdentNeedle.lua
	Script Purpose	:	Handles the quest, "The Keep of the Ardent Needle"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:	

	Zone			:	Antonica
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "Search the Keep of the Ardent Needle.", 1, "I must check the Keep of the Ardent Needle thoroughly.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Searched the Keep of the Ardent Needle.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've inspected the Keep of the Ardent Needle, and found nothing suspicious.")

	AddQuestStepChat(Quest, 2, "Speak with Captain Eitoa.", 1, "I must return to Captain Eitoa and inform her of the keep's status.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "Spoken with Captain Eitoa.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with Captain Eitoa and informed her of the keep's status.")

	UpdateQuestDescription(Quest, "Captain Eitoa's suspicions were unfounded, yet for a moment she still seemed concerned. Guard Loxley's work defending the tower remains unquestioned, and the keep remains clear of any form of wrong-doing.")
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