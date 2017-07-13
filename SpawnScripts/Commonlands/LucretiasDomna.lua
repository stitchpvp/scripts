function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'm moving on.")
	StartConversation(conversation, NPC, Spawn, "You are disturbing my studies here.  Begone, before I make you a walking cadaver!")
end
