function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Darg Frostwind at Combat Clearing, northwest of Tayil N'Velex.", 1, "I need to speak with Darg Frostwind. He will train me in the ways of combat.", 11, 2780045)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Darg Frostwind.")

	AddQuestStepKill(Quest, 2, "I need to defeat a sparring partner in combat. There are several sparring partners just north of Trainer Darg Frostwind.", 1, 100, "I need to speak with Darg Frostwind. He will train me in the ways of combat.", 11, 2780000, 2780001, 2780002)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have defeated a sparring partner in combat.")

	AddQuestStepChat(Quest, 3, "I need to speak with Trainer Darg Frostwind again.", 1, "I need to speak with Darg Frostwind. He will train me in the ways of combat.", 11, 2780045)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Darg Frostwind.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have defeated a sparring partner in combat.")

	AddQuestStepChat(Quest, 4, "I need to return to Tayil N'Velex.", 1, "Now that I have completed my combat training I should speak with Tayil N'Velex.", 11, 2780038)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Tayil N'Velex.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Tayil N'Velex.")

	UpdateQuestDescription(Quest, "After speaking with Darg Frostwind I defeated a sparring partner in combat. Now that I have performed my initial training Tayil N'Velex will have more opportunities for me to help out in The Outpost of the Overlord.")
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

function Accepted()
end

function Declined()
end

function Deleted()
end
