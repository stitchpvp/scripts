function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

  AddConversationOption(conversation, "I will talk to you later.")
	StartConversation(conversation, NPC, Spawn, "Well met, " ... GetName(Spawn) ... ".")
end
