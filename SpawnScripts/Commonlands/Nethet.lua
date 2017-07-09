function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Nothing right now, Nethet.")
	AddConversationOption(conversation, "Brandus sent me to talk to you about a missing shipment of his.  Do you know anything about it?", "Option1")
	StartConversation(conversation, NPC, Spawn, "Yous comes to Nethet to speaks of things yes?  What's it that you wants to knows?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Who do you think took the cargo?  Brandus said you might know.", "Option2")
	AddConversationOption(conversation, "Who was he dealing with?  That might give me a starting point.", "Option3")
	AddConversationOption(conversation, "I've had enough of this, I'm not getting involved anymore.")
	StartConversation(conversation, NPC, Spawn, "He's lookings for his precious cargoes now is he?  That's what one gets for dealings with others than ratonga, we is always reliables, yes?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How would you find these things out?", "Option4")
	AddConversationOption(conversation, "I've heard enough, I'm not getting involved in this.")
	StartConversation(conversation, NPC, Spawn, "I don't knows... yet, but I cans finds out I promises.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "No thanks, I'm leaving.")
	AddConversationOption(conversation, "Sure rat, what did you need from me?", "Option5")
	AddConversationOption(conversation, "I can help you Nethet, what kind of favor are you talking about?", "Option6")
	StartConversation(conversation, NPC, Spawn, "I can't just gives my secrets aways for free now cans I?   Maybe if you do me a favors I helps try to find out for you hrm?  We have a deals?")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Now I understand what you're getting at.  I'll go help this friend of yours.  Where can I find him?", "Option7")
	StartConversation(conversation, NPC, Spawn, "I has a friends whos in troubles with the Blackshield smugglers.  He went to speaks with thems but I'm not sures they wanted to chat.  I'm thinkin' he's needin' a hand from someones likes you.  If you helps him I'll be thinkin of where Brandus' cargo might be.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I will look for your friend, you had better have the information when I get back.")
	AddConversationOption(conversation, "It's my pleasure Nethet.", "Option8")
	StartConversation(conversation, NPC, Spawn, "He wents north along the coast.  He says the Blackshield have their own dock to do their business just northwest of the flying griffin tower.  Makes sure you come in from the land, they watches the docks carefully and its dangerous.  Look for anothers ratonga, his names is Nikora.")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll be right back.")
	StartConversation(conversation, NPC, Spawn, "I knows.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Now I understand what you're getting at.  I'll go help this friend of yours.  Where can I find him?", "Option9")
	StartConversation(conversation, NPC, Spawn, "I has a friends whos in troubles with the Blackshield smugglers.  He went to speaks with thems but I'm not sures they wanted to chat.  I'm thinkin' he's needin' a hand from someones likes you.  If you helps him I'll be thinkin of where Brandus' cargo might be.")
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Whatever rat, I'll be back as soon as I find your friend.", "Option10")
	StartConversation(conversation, NPC, Spawn, "He wents north along the coast.  He says the Blackshield have their own dock to do their business just northwest of the flying griffin tower.  Makes sure you come in from the land, they watches the docks carefully and its dangerous.  Look for anothers ratonga, his names is Nikora.")
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll be right back.")
	StartConversation(conversation, NPC, Spawn, "I knows.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can help you Nethet, what kind of favor are you talking about?", "Option11")
	AddConversationOption(conversation, "No thanks, I'm leaving.")
	StartConversation(conversation, NPC, Spawn, "I can't just gives my secrets aways for free now cans I?   Maybe if you do me a favors I helps try to find out for you hrm?  We have a deals?")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'm not going to be used like this, forget it rat.")
	StartConversation(conversation, NPC, Spawn, "I has a friends whos in troubles with the Blackshield smugglers.  He went to speaks with thems but I'm not sures they wanted to chat.  I'm thinkin' he's needin' a hand from someones likes you.  If you helps him I'll be thinkin of where Brandus' cargo might be.")
end
