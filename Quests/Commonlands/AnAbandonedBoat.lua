--[[
	Script Name		:	AnAbandonedBoat.lua
	Script Purpose	:	Handles the quest, "An Abandoned Boat"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:

	Zone			:	Commonlands
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay some carrion hounds", 15, 100, "There are some carrion hounds near a small pond in the Commonlands that have been causing some people a bit of trouble.  I should slay those beasts and run them out of the area.", 2256, nil)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have slain the carrion hounds.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have destroyed the carrion hounds, hopefully the area will be safer from my efforts.")

	UpdateQuestDescription(Quest, "I have destroyed quite a few of the carrion hounds.  ")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end
