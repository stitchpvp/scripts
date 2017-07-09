function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I might take a look at what you are selling.")
	StartConversation(conversation, NPC, Spawn, "My wares are the finest in the land. Won't you look?")
end
