function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "It's nothing. Sorry to bother you.")
	StartConversation(conversation, NPC, Spawn, "How can I help you?")
end

