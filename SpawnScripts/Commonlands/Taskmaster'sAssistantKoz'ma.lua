function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What requisition?", "Option1")
	AddConversationOption(conversation, "Then I'll leave.")
	StartConversation(conversation, NPC, Spawn, "Where's your requisition? Only those who filled requisitions should speak to me.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can be a huntsman.", "Option2")
	AddConversationOption(conversation, "Thanks for the heads up.")
	StartConversation(conversation, NPC, Spawn, "Why are you wasting my time? The Far Seas Trading Company pays huntsmen to track down various items and beasts. Sometimes the huntsmen inadvertently feed the beasts and never return. Too bad ... for them.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I got it, thanks.")
	StartConversation(conversation, NPC, Spawn, "No! No, no, no! We have plenty of huntsmen!  No more huntsmen! And that means you!  Okay?  Got it?  ... That is, unless of course, you happen to find an unfilled order. Get it?")
end
