function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Just passing through, sorry to interrupt you.")
	AddConversationOption(conversation, "Ignar Steadirt sent me.", "Option1")
	StartConversation(conversation, NPC, Spawn, "And who might you be?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Do you have your report?  Ignar asked me to pick them up.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Ignar?  Oh, I'll bet he's waiting on a report!  Poor fellow, he can't hear with one ear, you know. That's why he's been assigned duty out of harm's way.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll let Ignar know.")
	StartConversation(conversation, NPC, Spawn, "Yes, here it is.  The word is, something peculiar's going on ... apparently, there's a group of gnolls--the little wretches--that are trying to conjure up an undead invasion.  I'm not sure what they're using, but the activity of the undead has increased. I will send word to Ignar without delay should I learn more.")
end
