--[[
	Script Name		:	LiberatingtheCavaliers.lua
	Script Purpose	:	Handles the quest, "Liberating the Cavaliers"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/13/2017
	Script Notes	:

	Zone			:	Commonlands
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepSpell(Quest, 1, "I need to destroy the evil spirit bound to the cavalier statue located near Val'Marr.", 1, 100, "I need to cleanse the sacred cavalier statue near Val'Marr. Evil spirits have recently attached themselves to there.", 11, nil)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have destroyed the first evil spirit.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have cleansed the first site of the cavalier statues in the Commonlands.")

	AddQuestStepSpell(Quest, 2, "I need to destroy the evil spirit bound to the cavalier statue located where the Avatar of War was defeated.", 1, 100, "I need to cleanse the sacred cavalier statue where the Avatar of War met his demise. An evil spirit has recently attached itself to there.", 11, nil)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have destroyed the second evil spirit.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have cleansed the second site of the cavalier statues in the Commonlands.")

	AddQuestStepSpell(Quest, 3, "I need to destroy the evil spirits bound to the cavalier statues located at the end of a path.", 1, 100, "I need to cleanse the sacred cavalier statues where the road ends. Evil spirits have recently attached themselves there.", 11, nil)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have destroyed the evil spirits.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have cleansed the last site of the cavalier statues in the Commonlands.")

	AddQuestStepChat(Quest, 4, "Speak to Sir Groktog near the ruins of Val'marr.", 1, "I need to report back to Sir Groktog and tell him of the cleansing of the statues.", 11, nil)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have informed Sir Groktog of the mission's success.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have reported the cleansing of the statues to Sir Groktog of the Order of Marr.")

	UpdateQuestDescription(Quest, "I have cleansed the sacred cavalier statues in the Commonalnds. The evil spirits are gone. In exchange for the deed, Sir Groktog of the Order of Marr has given me a strange coin and directed me to the Down Below in Qeynos. He said, &quot;Valor's journey begins behind the statue of another.&quot;")
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
