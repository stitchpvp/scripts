function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, NPC, Spawn, "Stand away, fool! Long live the Queen!")
end
