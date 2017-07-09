function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Are you selling anything other than food?", "Option1")
	AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "Hello. You in the market for some food?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I need to leave.")
	AddConversationOption(conversation, "I am interested in it.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Just the old key I have. It supposedly goes to a condemned catacomb that the Guards of Qeynos no longer watch over. Maybe an adventure there for you?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Sure, just let me know when you want to buy it.")
end
