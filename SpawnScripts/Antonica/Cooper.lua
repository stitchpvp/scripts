function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "No, go ahead... is something the matter?", "Option1")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Feel free to browse my wares... or perhaps you're interested in selling some of yours? Say... no, never mind.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can help you out with that.")
	AddConversationOption(conversation, "No thanks, sounds a little shady.", "Option2")
	StartConversation(conversation, NPC, Spawn, "How perceptive of you to notice that I am in dire need of aid. A... close friend of mine... has requested news from the city and, sadly, I've not the time to deliver the repo... err... letter I have for him.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "Truly a lifesaver! Deliver this to Riason Hanagom, no need to return here when you're finished. Tell him that he'll need to pay you for your services. Do try not to look at it. The letter is rather personal and I would feel awkward if someone else were to read it.")
end
