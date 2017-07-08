function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Be well, Malora.")
	StartConversation(conversation, NPC, Spawn, "It is my duty to ensure the safety of less-experienced adventurers. Someone of your skill need not worry about traveling beyond this gate.")
end
