function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Who are you?", "Option1")
	AddConversationOption(conversation, "Nothing.")
	StartConversation(conversation, NPC, Spawn, "Ahoy ye bilge rat! Wha' ye be doing 'ere?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Nobody.")
	AddConversationOption(conversation, .. GetName(Spawn) ..  ", what are you doing here?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Avast! Ye not know who I be? I be ze dread piratess Heron... an' who migh' ye be?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'm not interested in your troubles.")
	AddConversationOption(conversation, "What kind of trouble?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Blimey!? Ye actually interested in 'elping? Well, me cap'ain and me crew seem ta be in a spo' of trouble, we do.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Okay, I will help you out.", "Option4")
	StartConversation(conversation, NPC, Spawn, "Arr, not so sure me trus' ye yet. Me needs ya ta dig up a treasure me pappy lef' ahind fa me.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll be back soon.")
	StartConversation(conversation, NPC, Spawn, "Great! Bucko, take tha' multidirectional aerospanning locationater over there ta locate me treasure... Gar! And don' ye be forgetting me trusted shovel. Fair winds ta ye!")
end
