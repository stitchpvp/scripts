function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
Say(NPC, "Stay clear of that lot down there!", Spawn)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "No, I was just passing through.")
	AddConversationOption(conversation, "I wasn't sent by anyone.", "Option1")
	StartConversation(conversation, NPC, Spawn, "What is it?  Did Iziran send you to check up on me?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "For the right price, always. ", "Option2")
	StartConversation(conversation, NPC, Spawn, "That's the first lot of good news I've heard all day.  These undead orcs have no strategy, no rhyme or reason to their actions; they just continue to relentlessly, albeit feebly, attack our city. Huh?  Say, since Iziran didn't send you, are your skills for hire?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Yeah, kill the rat and get your book.")
	StartConversation(conversation, NPC, Spawn, "Splendid. A ratonga stole my hunting journal, the little wretch.  Find him, kill him, and return with my journal.  Is that understood?")
end
