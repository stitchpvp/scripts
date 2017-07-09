
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I am a bit of an adventurer and a bit of an explorer.", "Option1")
	AddConversationOption(conversation, "I cannot chat now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I am always available to assist a frontiersman.")
	AddConversationOption(conversation, "I cannot assist. Farewell.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Adventurer ... explorer ... how would you like to be a courier too?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I will find Sighard and see that he gets the note.")
	StartConversation(conversation, NPC, Spawn, "I prefer the term frontierslady, but who am I to argue with a legendary adventurer. Please take this note to Sighard Sayer, proprietor of Sayer's Outfitters, the frontier trading post just to the north of here.")
end
