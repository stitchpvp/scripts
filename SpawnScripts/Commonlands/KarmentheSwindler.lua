function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What are you selling?", "Option1")
	AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "Hello there! What can I do for you?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What is it used for?", "Option2")
	AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "This key... I know, I know. It doesn't look like much, but really it's an exact copy of the real thing.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Perfect, I'm going to need one of those..", "Option3")
	AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "The original was used to open the grate to sewer line number five. You can find the entrance in one of the towers out along the wall in the Commonlands.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Good.")
	StartConversation(conversation, NPC, Spawn, "Well then, I'd be happy to sell you one.")
end
