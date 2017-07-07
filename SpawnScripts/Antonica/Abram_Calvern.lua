function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "No, I have not... what are they?", "Option1")
	AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "Greetings Traveler, you ever heard of the Necrosis Goblin Clan?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks for the advice.")
	StartConversation(conversation, NPC, Spawn, "They are evil little goblins. They break into Qeynos through the old condemned catacombs. That is why Sir Dinzzie and the rest of us are here. Be cautious if you ever do find yourself near the buggers!")
end
