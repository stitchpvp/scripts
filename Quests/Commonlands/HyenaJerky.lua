--[[
	Script Name		:	HyenaJerky.lua
	Script Purpose	:	Handles the quest, "Hyena Jerky"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	10/6/2018
	Script Notes	:	

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect gnarled carrion hound ears", 15, 100, "Mooshga has asked me to collect fifteen gnarled carrion hound ears.", 94, 330027, 330029, 330030)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected fifteen gnarled carrion hound ears.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have the gnarled carrion hound ears that Mooshga requested.")

	AddQuestStepChat(Quest, 2, "I should return to Mooshga", 1, "I have collected fifteen gnarled carrion hound ears.  I should return to Mooshga near the Freeport gates.", 11, 330015)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned ears to Mooshga.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned the gnarled carrion hound ears to Mooshga.")

	UpdateQuestDescription(Quest, "I collected fifteen Gnarled Carrion Hound Ears and returned to Mooshga.")
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