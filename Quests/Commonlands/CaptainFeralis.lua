--[[
	Script Name		:	CaptainFeralis.lua
	Script Purpose	:	Handles the quest, "Captain Feralis"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:	

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Captain Feralis at the Crossroads", 1, "I need to deliver these root samples to Captain Feralis at the Crossroads.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Captain Feralis.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Captain Feralis.")

	UpdateQuestDescription(Quest, "I have given the treated root samples to Captain Feralis.")
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