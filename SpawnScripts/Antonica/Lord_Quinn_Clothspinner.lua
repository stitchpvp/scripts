function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I will not rest with such inhospitality. ")
	StartConversation(conversation, NPC, Spawn, "Welcome to the Keep of the Ardent Needle. You may rest here until I see fit to send you on your way. ")
end
