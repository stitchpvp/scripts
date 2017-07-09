function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "What can I do ya fer?")
end
