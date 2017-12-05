--[[
	Script Name		:	TroubleAbout.lua
	Script Purpose	:	Handles the quest, "Trouble About"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:

	Zone			:	Commonlands
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill the orc emissary", 1, 100, "I must kill the orc emissary for Captain Vertas.", 11, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I killed the emissary. I should report what I found to Captain Vertas.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed the orc emissary.")

	AddQuestStepChat(Quest, 2, "I should return to Captain Vertas", 1, "I should return to Captain Vertas in the Commonlands and report my findings.", 185, nil)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave the note to Captain Vertas.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to the Crossroads and reported my findings to Captain Vertas.")

	UpdateQuestDescription(Quest, "I returned to Captain Vertas with the note I received off the orc emissary.")
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
