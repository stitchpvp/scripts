function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I must be on my way.")
	StartConversation(conversation, NPC, Spawn, "Hello there!  I trust your travels are treating you well!")
end
