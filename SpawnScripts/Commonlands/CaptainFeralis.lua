function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I am Melendred. Rainus asked me to deliver these root samples to you.", "Option1")
	StartConversation(conversation, NPC, Spawn, "Yes?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Rainus said you might have work to give me.", "Option2")
	AddConversationOption(conversation, "Uh, you're welcome.")
	StartConversation(conversation, NPC, Spawn, "Of course. Rainus mentioned you. Somehow I guessed you would be bigger. No matter. Thank you for acting courier, that will be all.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What is it?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Oh... so that's your angle. I know your type. I got enough of you in the city before I was transferred out here. Still, I suppose you serve a purpose. Sure, I've got something you can do.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I understand.", "Option4")
	StartConversation(conversation, NPC, Spawn, "Head down to that small ratonga and kerran community south west of here and collect their taxes. You'll need to collect from every house owner. Normally they place the money in their mailbox, on the front of their houses. Sometimes they forget... when that happens you remind them, understood?")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Good. I've had too many softies under my watch. Here's a list of their names and how much they owe. I'll be here when you're done.")
end
