function hailed(NPC, Spawn)
  PlayAnimation(NPC, 539,Spawn, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What happened to your leg?", "Option1")
	AddConversationOption(conversation, "I'm afraid I don't have time to chat.")
	StartConversation(conversation, NPC, Spawn, "Why, hello there! Pleased to meet you, friend. I do hope you're having a better day than I am. With my leg being as it is, I'm not sure how much longer I can take being stuck here.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Really?", "Option2")
	AddConversationOption(conversation, "I'm sorry, but I have pressing business elsewhere.")
	StartConversation(conversation, NPC, Spawn, "Ah, I can't believe I was such a darn fool. How'd I manage to hurt my leg and lose my best fishin' lure all in one day? There I was up on the coast, north of here, having a nice walk before settling down for a long day of fishin' when I slipped and hurt my poor leg.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure, I'd be happy to help.", "Option3")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "It hurt somethin' fierce and I only barely managed to drag myself back here. The next morning I found I could stand on it okay, but not for too long. I thought I'd try to do some fishin' here at this nice pond since I'm stuck until I can heal enough to get back to my favorite fishin' holes. Just as I was getting set up, I realized I'd lost my favorite lure! I must have dropped it somewhere up on the beach north of here near where I fell. With my leg like this, I can't go and look for it myself. I don't suppose you might be able to help find it for me?")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Okay.", "Option4")
	StartConversation(conversation, NPC, Spawn, "Thank you very much! As I was saying, it should be somewhere near the beach to the north of here. Good luck!")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, NPC, Spawn, "Thank you very much! As I was saying, it should be somewhere near the beach to the north of here. Good luck!")
end
