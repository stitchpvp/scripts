function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Excuse my interruption, guard.")
	StartConversation(conversation, NPC, Spawn, "I am afraid I must ask you to move along, citizen. This is a place of duty, not chatter.")
end
