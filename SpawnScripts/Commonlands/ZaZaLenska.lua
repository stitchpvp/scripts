function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I don't know whether I have or not.  Describe him for me.", "Option1")
	AddConversationOption(conversation, "I've got to do some visiting of my own.")
	StartConversation(conversation, NPC, Spawn, "Have you seen my husband, Valeri?  He leaves home too often. He comes and goes as he pleases, and I never know where he is! I've had other husbands, and I know the signs of a cheater.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Private residences?  You mean, visiting friends?", "Option2")
	StartConversation(conversation, NPC, Spawn, "He's tall and slim with jet black fur and three hoops in his left ear. He's handsome, oh, so handsome!  Surely you could not have missed him!  Unless, perhaps, his visits are in a ... private home.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What kind of help are you looking for?", "Option3")
	AddConversationOption(conversation, "I won't be able to help.  Sorry.")
	StartConversation(conversation, NPC, Spawn, "Oh, to think of Valeri--my sweet, precious husband--in the arms of another!  No!  I cannot bear it!  I must know the truth!  And I know just the way.  Mama's potion will show me whether he's faithful to his ZaZa, or not.  Can you help this poor, unhappy wife?")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Perhaps another time.")
	AddConversationOption(conversation, "I will help you.  What will you need?", "Option4")
	StartConversation(conversation, NPC, Spawn, "I need ingredients for my potion.  Not too many and they must be fresh. I need to spread this potion on my Valeri's clothes ... and then I will have the answers I need.  Let me write this down for you; it's complex.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "See you soon.")
	StartConversation(conversation, NPC, Spawn, "I'm trusting you with the happiness of my marriage.  You are most kind to help poor ZaZa.  I will see you again ... soon.")
end
