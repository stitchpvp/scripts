function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Yes. I have these roots for you.", "Option1")
	StartConversation(conversation, NPC, Spawn, "Are you ".. GetName(Spawn) .. "?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "With what?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Good, good. That means Feralis thinks you're able to help me.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Living and dead?", "Option3")
	StartConversation(conversation, NPC, Spawn, "The orcs of Ree, living and dead alike.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What do you need me to do?", "Option4")
	StartConversation(conversation, NPC, Spawn, "I don't know the specifics, but the orcs of Ree inhabit this land and so do their skeletons. Only recently, however, have the living emerged from the Wailing Caves. They are becoming bolder.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What is your intent?", "Option5")
	StartConversation(conversation, NPC, Spawn, "Poison them. When I heard of Rainus' roots I smelled an opportunity.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can do this.", "Option6")
	StartConversation(conversation, NPC, Spawn, "My intent is to get you to do work for me while I continue dealing with these nomads. What do I intend you to do on my behalf? I'd like you to travel west of here with the root, they have an encampment there. When you reach the orcs, place it near them. Let them consume it. From there I'm sure nature will take its course.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, NPC, Spawn, "If they get as addicted as Rainus claims the Bloodskull orcs are, this may be the key to drawing the strength of the Ree orcs out from underground. Press your advantages, ".. GetName(Spawn) .. ", that's what I always say. Speaking of which, while you're there I would like you to find the Ree encampment. Once there, find a current copy of their orders. I'd like to be as up to date as possible.")
end
