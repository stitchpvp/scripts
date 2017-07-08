function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure, what is it?", "Option1")
	AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "Hey. Are you looking for something to do?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "And you need me to...?", "Option2")
	AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "Yes, the other day I found this notebook near the sewer system to the north of here.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I might do that.")
	StartConversation(conversation, NPC, Spawn, "Well, I am sure you can learn something about what is going on in the sewer system if you were to buy the tome from me and read it. Let me know if you are interested in it.")
end
