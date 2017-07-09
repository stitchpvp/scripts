function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I haven't time for this.")
	StartConversation(conversation, NPC, Spawn, "I'm tired of Safiya, that Kerra tires me with her madness.")
end
