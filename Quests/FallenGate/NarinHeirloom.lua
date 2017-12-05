--[[
	Script Name		:	NarinHeirloom.lua
	Script Purpose	:	Handles the quest, "Narin Heirloom"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:

	Zone			:	Commonlands
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I am looking for V'tal's brother and the heirloom", 1, "I am looking for V'tal's brother and the heirloom.  Her brother may have gone down to help the Thexians excavate the Hall of the Fallen.", 1046, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found her brother and the heirloom.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found her brother and the heirloom.")

	AddQuestStepChat(Quest, 2, "I need to return to V'tal", 1, "I need to return to V'tal and tell her what I have found.", 11, nil)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned the lockbox to V'tal and told her about her brother.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned the lockbox to V'tal and told her about her brother.")

	UpdateQuestDescription(Quest, "V'tal Narin's brother was dead, but I found the box and returned it to her.")
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
