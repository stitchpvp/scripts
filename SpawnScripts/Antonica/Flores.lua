function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'm looking for work. Do you have any tasks that need done? ", "Option1")
	AddConversationOption(conversation, "I don't need anything right now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Step right up! My wares stand up to any found in the city!  Made by the finest Qeynosian crafters, they are!")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Does it pay well?  Sounds like a pretty decent hike.")
	AddConversationOption(conversation, "No thanks.  The far reaches sounds further than I'm willing to go.", "Option2")
	StartConversation(conversation, NPC, Spawn, "I certainly do. I need to deliver supplies to a couple of my merchants out in the far reaches of Antonica.  Business is so good right now that I hate to close up shop. How would you like to deliver their supplies?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Hey, wait that's my journal... err, all right I suppose it's too late.")
	StartConversation(conversation, NPC, Spawn, "I'll pay you a cut of my earnings.  You'll take the first crate of supplies to Novak over by the lighthouse. The second must go to Geddard at Gnollslayer Keep. I see you've a little book.  Here, let me write down where you need to go.   Make sure to bring back their delivery pouches when you're through.")
end
