function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What choker?", "Option1")
	AddConversationOption(conversation, "I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "The orcs got everyone... the whole expedition was wiped out... I'm all that's left of a score of soldiers.  You've got to get this magic band to the others.... my wounds are too great for me to travel much longer...")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Take this... Obtain the gems from the local orc officers... Socket that band with them and then take it to the Freep...")
end
