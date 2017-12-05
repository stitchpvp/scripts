function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How can someone steal your thoughts?", "Option1")
	AddConversationOption(conversation, "I don't speak to rathed people. Farewell.")
	AddConversationOption(conversation, "I have your scrolls.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Oh look at the mess I am in! My thoughts of wonderment have been stolen from me.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Don't fret. I will go and claim your scrolls.")
	AddConversationOption(conversation, "You'll never see the scrolls again. Sorry.", "Option3")
	StartConversation(conversation, NPC, Spawn, "They have my scrolls ... my poems! I was just sitting upon the isles, like I always do, searching for inspiration, when all of the sudden they appeared! I ran and now have lost my scrolls to the howling beasts.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I will return with your scrolls.")
	StartConversation(conversation, NPC, Spawn, "Will you?! Oh! Thank you! Search them well, yes, search them very well. I know my scrolls are being clutched by those furry paws!")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I don't really care to read your work. Farewell.")
	StartConversation(conversation, NPC, Spawn, "You saved me! These scrolls will take me from being a simple wordsmith to a legendary poet. You have read my work, have you not?")
end
