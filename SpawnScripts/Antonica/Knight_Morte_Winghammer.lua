function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Glad to brighten your day.  Just passing through.")
	StartConversation(conversation, NPC, Spawn, "Hello!  It's such a pleasure to talk to someone else for a change!  What brings you this way from the big city, eh?")
end

