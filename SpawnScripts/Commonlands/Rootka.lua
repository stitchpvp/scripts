function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Your taxes weren't all in your mailbox.", "Option1")
	StartConversation(conversation, NPC, Spawn, "What you wants with Rootka?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "It appears to be working.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Someone takes them, then! Tries to make Rootka looks bad!")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "There was only half in your mailbox.", "Option3")
	StartConversation(conversation, NPC, Spawn, "Fine, fine! Rootka understands. How much?")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you, Rootka.")
	StartConversation(conversation, NPC, Spawn, "Here, take it. Rootka likes living more than money anyway.")
end
