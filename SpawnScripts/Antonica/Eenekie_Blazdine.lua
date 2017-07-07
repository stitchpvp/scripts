function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Help with what?", "Option1")
	AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "Thank the stars that you are here! I've been looking for a worthy assistant that can help.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I need to leave.")
	AddConversationOption(conversation, "I will collect the artifacts for the Concordium.", "Option2")
	StartConversation(conversation, NPC, Spawn, "The Necrosis goblin clan, they have found their way into the condemned catacomb below us and have been stealing the artifacts. The Concordium needs your help in retrieving these artifacts.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "My pleasure.")
	StartConversation(conversation, NPC, Spawn, "Good, the Concordium will be pleased with your work.")
end
