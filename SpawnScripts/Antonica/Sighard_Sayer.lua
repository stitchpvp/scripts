function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you. I shall look around.")
	StartConversation(conversation, NPC, Spawn, "Welcome, welcome. Please look about. Speak to my merchants; they're quite helpful.")
end
