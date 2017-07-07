function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "It seems not as well as you.", "Option1")
	AddConversationOption(conversation, "I have no time for love.")
	StartConversation(conversation, NPC, Spawn, "Do you know love, my friend?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Oh, what does she look like?", "Option2")
	AddConversationOption(conversation, "Well, good luck to you. Bye.")
	StartConversation(conversation, NPC, Spawn, "How lucky I am. I have been holding this gift for my love for quite some time, but, alas, my duties keep me here. How sad it is that this flower shall wilt in the wait. Still, I am lucky, for her beauty shall never wane.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "She sounds beautiful. Your flowers are wilted though. Let me gather some new ones for you.", "Option3")
	AddConversationOption(conversation, "Good luck giving her the present. Bye.")
	StartConversation(conversation, NPC, Spawn, "How does one compare the beauty of a goddess using the words of mere mortals? Her hair is the color of the rising sun, containing the most glorious hues of the dawn. Her skin is akin to porcelain, flawless and immaculate. Her eyes are the green of a springtime meadow, with small bursts like the yellow of daisies in their center. Her lithe body is soft and curved like the waves of the sea. I only wish my eyes could witness her beauty once again.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I will find them.", "Option4")
	StartConversation(conversation, NPC, Spawn, "That would be splendid! Last I saw, there were some beneath a shaded tree north of here.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Alright.")
	StartConversation(conversation, NPC, Spawn, "Please hurry!")
end
