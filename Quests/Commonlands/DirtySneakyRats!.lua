--[[
	Script Name		:	DirtySneakyRats!.lua
	Script Purpose	:	Handles the quest, "Dirty Sneaky Rats!"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/14/2017
	Script Notes	:

	Zone			:	Commonlands
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill the dregs sneaks till I find the journal", 1, 100, "From the crossroads, cross the southern bridge and head south until you find a small encampment of ratonga dregs.  Among them find the sneak that stole the journal.", 195, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found the stolen journal.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the journal and should return it to the Master of the Hunt.")

	AddQuestStepChat(Quest, 2, "Return the journal to the hunter", 1, "I need to go back to the Master of the Hunt and return the stolen journal.", 11, nil)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've returned the journal.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned the journal, the hunter was very gracious.")

	UpdateQuestDescription(Quest, "I found the journal that the dregs sneak stole and returned it to the Master Hunter, she was pleased and offered to teach me what it means to be a true hunter, when I'm ready... Whenever that may be. <br>")
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
