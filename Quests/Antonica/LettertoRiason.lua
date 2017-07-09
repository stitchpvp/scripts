--[[
	Script Name		:	LettertoRiason.lua
	Script Purpose	:	Handles the quest, "Letter to Riason"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:	

	Zone			:	Antonica
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must deliver a letter to Riason at Windstalker Village in Antonica.", 1, "I must deliver Merchant Cooper's letter to Riason Hanagom at Windstalker pond.", 75, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've delivered the letter to Riason.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've delivered the letter to Riason Hanagom at Windstalker pond.")

	UpdateQuestDescription(Quest, "I've delivered the letter to Riason Hanagom as requested of me. I cannot say what will happen now, but the situation certainly seems less than savory.")
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