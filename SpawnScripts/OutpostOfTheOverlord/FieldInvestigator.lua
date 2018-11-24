function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I don't know what you're talking about.")
	StartConversation(conversation, NPC, Spawn, "The fire burns hot, hiding all tracesss of what's inssside.")
end
