function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Not right now.")
	AddConversationOption(conversation, "I'm here to deliver this crate of supplies from Flores.", "Option1")
	AddConversationOption(conversation, "Matsy sent me for some pepper.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Greetings, perhaps you need to replenish your supplies, or maybe just sell some of what you picked up along the trail?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks. I'll make sure he gets it.")
	StartConversation(conversation, NPC, Spawn, "Great, I was almost out of supplies as it stands. I would hate to hike all the way back to Flores. Here's a pouch for Flores. Make sure he gets this, okay?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Okay, thanks very much.")
	StartConversation(conversation, NPC, Spawn, "Oh, here you go! I will put it on her bill.")
end
