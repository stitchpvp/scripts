--[[
	Script Name		:	ZaZa'sLittleProblem.lua
	Script Purpose	:	Handles the quest, "ZaZa's Little Problem"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:	

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need monitor behemoth tears from the Commonlands.", 2, 100, "I need to collect the required ingredients for ZaZa's potion.", 176, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I obtained monitor behemoth tears for ZaZa.")

	AddQuestStepKill(Quest, 2, "I need seven vials of coagulated blood from the giant vulrich in the Commonlands.", 7, 100, "I need to collect the required ingredients for ZaZa's potion.", 8, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I obtained the vulrich blood for ZaZa.")

	AddQuestStepKill(Quest, 3, "I need to get four drops of gloom venom from gloom snakes in Fallen Gate.", 4, 100, "I need to collect the required ingredients for ZaZa's potion.", 177, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I got the venom I needed to complete ZaZa's potion.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've obtained the monitor behemoth tears.")

	AddQuestStepChat(Quest, 4, "I need to speak to ZaZa.", 1, "I need to speak with ZaZa Lenska in the Commonlands.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have spoken to ZaZa.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with ZaZa and have been rewarded.")

	UpdateQuestDescription(Quest, "The ingredients are gathered and ZaZa will know soon whether or not her current husband is faithful.  I think.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end