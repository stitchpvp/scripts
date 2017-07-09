function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll leave you alone then.")
	StartConversation(conversation, NPC, Spawn, "At least I can find peace and solitude in fishing.")
end
