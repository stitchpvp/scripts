function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Who are you talking about?", "Option1")
	AddConversationOption(conversation, "I'll stay out of your way.")
	StartConversation(conversation, NPC, Spawn, "She's gone! There was nothing I could do. Once I finish this cutter, that will all change. I got a few scars that I need to return to their dealers.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Maybe I could help look for her while you finish your weapon?", "Option2")
	AddConversationOption(conversation, "I'll stay out of your way. ")
	StartConversation(conversation, NPC, Spawn, "My wife, Ariana.  Bleeding in the dust, I watched the orcs drag her away. But when I finish this blade, I'll retrieve her from the grasp of those evil orcs!")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll do that. ")
	StartConversation(conversation, NPC, Spawn, "The orcs terrify most people around here. I appreciate your courage.  Go now and search for my wife and return with any information you find.")
end
