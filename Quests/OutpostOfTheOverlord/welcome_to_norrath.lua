function Init(Quest)
  AddQuestStepChat(Quest, 1, "Speak to Tayil N'Velex, outside the entrance of Sythor's Spire in the center of the outpost.", 1, "I should speak with Tayil N'Velex. She is at the entrance to Sythor's Spire in the center of the outpost.", 11, 2780038)
  AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
  UpdateQuestStepDescription(Quest, 1, "I spoke with Tayil N'Velex")
  UpdateQuestTaskGroupDescription(Quest, 1, "I spoke with Tayil N'Velex.")
  UpdateQuestDescription(Quest, "I have spoken to Tayil N'Velex.")
  GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
  if Step == 1 then
    QuestComplete(Quest, QuestGiver, Player)
  end
end

function Accepted()
end

function Declined()
end
