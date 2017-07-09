function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "You saw what?", "Option1")
	AddConversationOption(conversation, "Sorry, I didn't mean to disturb you.")
	StartConversation(conversation, NPC, Spawn, "It appeared in the Karma Pool, while I was in trance. I saw it! So beautiful.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Fine, I'll be on my way.", "Option2")
	StartConversation(conversation, NPC, Spawn, "I am sorry, but we are having a private meeting.  This is no concern of yours.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I suppose I could. Where should I look?")
	AddConversationOption(conversation, "I'm too busy to go looking for a tree.  ", "Option3")
	StartConversation(conversation, NPC, Spawn, "Wait!  Please do not go. You ... you may be of use to us. I want to find the tree I saw and confirm its location. Unfortunately, I must remain here in the tower with my studies. Would you please help me?")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Great, I'm on my way to finding that tree for you.")
	StartConversation(conversation, NPC, Spawn, "When I peered into the Karma Pool, I saw a constellation of stars that told me where the tree could be found.  Go to the heart of a region called the Thundering Steppes, near the natives.  You will seek a tree within a tree -- one dead and one alive.  When you find it, take a Golden Acorn from its branches and return to me.")
end
