function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What is required of me?", "Option1")
	AddConversationOption(conversation, "I can not serve at this time.")
	StartConversation(conversation, NPC, Spawn, "Your service is required, citizen.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Not now.")
	AddConversationOption(conversation, "Very well.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Whatever He desires. You will give your service to the Commonlands in His name and report to Gerun Pontian here in the Commonlands at the gates to the City of Freeport.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Serve the Overlord well, citizen. May you have all the luck you require.")
end
