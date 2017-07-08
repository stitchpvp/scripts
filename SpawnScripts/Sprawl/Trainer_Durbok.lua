function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sorry, I didn't mean to interrupt.")
	StartConversation(conversation, NPC, Spawn, "Hey! Can't you see I'm busy training these recruits how to fight?")
end
