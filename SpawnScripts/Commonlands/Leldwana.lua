function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Your taxes.", "Option1")
	StartConversation(conversation, NPC, Spawn, "What do you want?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "You should probably be more careful in the future.")
	StartConversation(conversation, NPC, Spawn, "Oh no! I forgot! I'm so sorry. Here, take it, I have it right here.")
end
