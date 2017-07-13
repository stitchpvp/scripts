function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What important information?", "Option1")
	AddConversationOption(conversation, "I am sorry but I cannot help. ")
	StartConversation(conversation, NPC, Spawn, "I don't have much strength so I will make this quick. I was on assignment to intercept a Bloodskull messenger because he is rumored to have some important information. ")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How can I help?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Unfortunately I failed in my attempt to gather this information, but if you are able to locate him I think he is in possession of something that would be worth your while. ")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I will do my best")
	StartConversation(conversation, NPC, Spawn, "Kill the Bloodskull messenger and return to me after you have gathered any important information that he was carrying.")
end
