function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll just look about. ")
	StartConversation(conversation, NPC, Spawn, "Take a look around. Never have you seen such finely crafted or wondrous artifacts for sale ... for such little coin!")
end
