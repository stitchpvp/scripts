function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "You look like you have an interesting style of blacksmithing.", "Option1")
	AddConversationOption(conversation, "I think I'll play it safe and stay back here.  ")
	StartConversation(conversation, NPC, Spawn, "Keep clear of the forge, my friend.  The metal is hot and my hammer swings where it will!")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What is wrong with the tools?", "Option2")
	AddConversationOption(conversation, "I'm sorry to hear that.  I guess I should look elsewhere for my repairs.")
	StartConversation(conversation, NPC, Spawn, "Aye!  Some think I'm dangerous in my old age, but I get the job done.  I never retired, you know.  Blacksmithing is in my blood... I gotta work now and then, keeps me young.  Ach!  But these worthless tools ... they make me mad as a wet cat!")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What is a smithy?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Oh, nothing's wrong with them, I suppose.  It's just ... they're not the beloved tools I left behind in Kaladim.  Back then, we dwarves knew how to make tools.  Not like today. If only I had a smithy like the one in that fabled Stormhold, I would never retire!")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "If the legend turns out to be true, I'll let you know.", "Option4")
	AddConversationOption(conversation, "If I found such a thing I certainly wouldn't tell you.  ")
	StartConversation(conversation, NPC, Spawn, "Why, a smithy is the workshop of a blacksmith!  And Stormhold -- the legendary fortress of the Knights of Thunder -- had the greatest smithy outside Kaladim!  Underforge it was called.  It produced all the arms and armor, and kept the Knights' horses shod.  Say ... you've heard the rumors, haven't you?  Some rapscallion crypt raiders found Stormhold, or so everyone claims.  I put no faith in rumors, but I'd be grateful to anyone who would find out the truth for me.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Yes, that seems to be my experience.")
	StartConversation(conversation, NPC, Spawn, "Thank you much.  A rumor's not worth a heap of slag ... but sometimes you can find a grain of truth in a rumor.")
end
