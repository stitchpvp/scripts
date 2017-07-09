function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Have fun with the stone, I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "It's this black chunk of marble, you see.  I'm quite curious about it, and have been investigating a way to power it.")
end
