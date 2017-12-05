function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure, what do you need from me?", "Option1")
	AddConversationOption(conversation, "Why don't you make yourself useful?!")
	StartConversation(conversation, NPC, Spawn, "So, then I said, \"That's what the Gnome is for!\"  Wraahaahaa! Huh? What? If you're goin' to come over here and badger me, why don't you make yourself useful?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'm looking for some work.", "Option2")
	AddConversationOption(conversation, "I think I'll be going now.")
	StartConversation(conversation, NPC, Spawn, "Ahhh, Aroof... He's a good chap, but he's about as smart as a trog. Me an' the big guy here are in the middle of something. What do you want? ")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Okay, I have had enough. Bye.")
	AddConversationOption(conversation, "And?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Ya see, twinkletoes over here has had quite a bit to drink. The big oaf isn't as coordinated as the barkeep would like him to be. Seems last time I sent him up to get us another round, he tripped over a ratonga sitting by the bar.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Okay. So?", "Option4")
	AddConversationOption(conversation, "Umm, never mind.")
	StartConversation(conversation, NPC, Spawn, "... And, it turns out the ratonga had what you might call... financial responsibilities to take care of for the proprietor. Looks like the little fur ball won't be back for quite some time! Hraahaha! The barkeep will throw us both out if the big guy over here comes stumbling upstairs one more time. Besides, I don't think he's feeling up to going anywhere right now.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Okay, get on with it.", "Option5")
	StartConversation(conversation, NPC, Spawn, "You're an impatient one, aren't you? You need to slow down a bit! Sit back, grab an ale, and enjoy the sights. Get up you drunken fool! You know, when I was a young pup like yourself I used to be all over Norrath fighting Drakota... with my bare hands.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "No, it looks like you two have had enough.")
	AddConversationOption(conversation, "Sure, I will be right back", "Option6")
	StartConversation(conversation, NPC, Spawn, "And look where it got me. Sitting here with a drunken fool who can't keep both feet on the ground, and talking to a whelp like you. Where was I?  Aye, I want a drink! Why don't you grab the big guy and I an ale.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "I'll tell ya what I need when you get back.")
end

