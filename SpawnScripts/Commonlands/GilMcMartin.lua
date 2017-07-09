function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Fine.")
	StartConversation(conversation, NPC, Spawn, "Stand away, knave! Long live the Overlord!")
end
