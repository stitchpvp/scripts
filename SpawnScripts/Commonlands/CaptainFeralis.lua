QUEST_1_FROM_CAPTAIN_FERALIS = nil
QUEST_4_FROM_RAINUS = nil

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

  if HasQuest(Spawn, QUEST_4_FROM_RAINUS) then
	AddConversationOption(conversation, "I am " .. GetName(Spawn) .. ". Rainus asked me to deliver these root samples to you.", "Option1")
	StartConversation(conversation, NPC, Spawn, "Yes?")

  elseif HasQuest(Spawn, QUEST_1_FROM_CAPTAIN_FERALIS) then
      AddConversationOption(conversation, "Here's the money.", "Option2")
      StartConversation(conversation, NPC, Spawn, "Well?")
  end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Rainus said you might have work to give me.", "Option3")
	AddConversationOption(conversation, "Uh, you're welcome.")
	StartConversation(conversation, NPC, Spawn, "Of course. Rainus mentioned you. Somehow I guessed you would be bigger. No matter. Thank you for acting courier, that will be all.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What is it?", "Option4")
	StartConversation(conversation, NPC, Spawn, "Oh... so that's your angle. I know your type. I got enough of you in the city before I was transferred out here. Still, I suppose you serve a purpose. Sure, I've got something you can do.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I understand.", "Option5")
	StartConversation(conversation, NPC, Spawn, "Head down to that small ratonga and kerran community south west of here and collect their taxes. You'll need to collect from every house owner. Normally they place the money in their mailbox, on the front of their houses. Sometimes they forget... when that happens you remind them, understood?")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Good. I've had too many softies under my watch. Here's a list of their names and how much they owe. I'll be here when you're done.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure.", "Option6")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Nice work, here's your cut. While you were out another job came up, interested?")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "All right, I will go speak with him.", "Option7")
	StartConversation(conversation, NPC, Spawn, "Yeah, that's what I thought. Ventar T'Kal is a man of mine. You can find him north west of here, in the company of nomads. I need you to deliver these Bloodskull Frenzy Root samples to him. They've already been treated... so don't eat them.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Good. And thanks.")
end
