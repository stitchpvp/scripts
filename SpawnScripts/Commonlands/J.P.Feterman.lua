function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Um, what are you talking about?", "Option1")
	AddConversationOption(conversation, "Right, I really don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "Salutations, friend! Ahh, by the look in your eyes I can see that you're in need of my considerable experience. It can be difficult learning the perilous ways of adventure in these harsh, barren lands. Many a poor, naive soul such as yourself has met their end out here.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Well, you aren't full of yourself at all, are you?", "Option2")
	AddConversationOption(conversation, "That's it, I'm not going to take this.")
	StartConversation(conversation, NPC, Spawn, "Oh, there's no need to pretend otherwise! I understand your fears. Not many are as knowledgeable of these things as I am, and I feel it's my duty to help those who could benefit from my tutelage. Why, even I was once as inexperienced as yourself a long, long time ago... but that is a story for another time.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I guess it couldn't hurt...", "Option3")
	AddConversationOption(conversation, "No way. I'm leaving.")
	StartConversation(conversation, NPC, Spawn, "Ahh, such spirit. It warms my heart to see it. Before I send you into the arms of danger, I'll need you to prove to me that you're ready to follow in my renowned footsteps. Once you've seen a few of the more perilous places of adventure, you should be ready to learn from my experience.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Okay.", "Option4")
	StartConversation(conversation, NPC, Spawn, "That's the spirit! Here, let me just jot down a few of the more perilous locations here in The Commonlands in your journal.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Alright.")
	StartConversation(conversation, NPC, Spawn, "Some day a long, long time from now, when you're as experienced as I, you'll know these places like the back of your hand. Run along now!")
end
