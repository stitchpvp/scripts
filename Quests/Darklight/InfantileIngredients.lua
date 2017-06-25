--[[
	Script Name		:	Quests/Darklight/InfantileIngredients.lua
	Script Purpose	:	Handles the quest, "Infantile Ingredients"
	Script Author	:	Cynnar
	Script Date		:	9/2/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Calnozz J'Melvirr
	Preceded by		:	Stunning Revelation
	Followed by		:	Dust to Dust
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "Catch baby snakes from the serpents near the Lower Tendril River", 8, 100, "Calnozz J'Melvirr wants me to collect a number of baby snakes so he can milk their powerful venom.", 98)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the baby snakes")

	AddQuestStepChat(Quest, 2, "Bring the snakes back to Calnozz", 1, "Calnozz J'Melvirr wants me to collect a number of baby snakes so he can milk their powerful venom.", 98, 340066)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
		UpdateQuestDescription(Quest, "I have collected the baby snakes for Calnozz J'Melvirr.")
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