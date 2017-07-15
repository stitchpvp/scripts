function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What?  I'll do nicely for what?", "Option1")
	AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "Yes... you'll do nicely.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Is that right?  This should be interesting.", "Option2")
	AddConversationOption(conversation, "Hardly, find yourself another fool.")
	StartConversation(conversation, NPC, Spawn, "Thanks to some other foolish adventurers, I've found a way to get to Zarvonn and the power he possess.  In order for me to obtain what I'm after, he must be destroyed.  This is where you come in.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Arrogant fool, I have not the time for you!")
	AddConversationOption(conversation, "Why should I help you?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Silence!  Listen to me fellow Freeportian!  You would do well to use the two ears you have and close your one mouth!  Muster some fellow adventurers of like mind and strength then delve into Zarvonn's domain.  Once inside, destroy him and his minions, but do not spoil nor take what you find, for it will be that which you do not understand.  I will see to those... personally.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "No, that will not be necessary.  What would you have of me?", "Option4")
	StartConversation(conversation, NPC, Spawn, "Because the Overlord demands it!  Do I need to tell you twice?  The last adventurer I had to tell twice is now a mindless undead servant.  Care to join him?")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I am ready, please begin.", "Option5")
	StartConversation(conversation, NPC, Spawn, "Much better, it pleases me to see you have come to your senses.  Gather as many people as you can, for you will need more than six to defeat Zarvonn, that much is certain.  When you are ready to travel into his domain, I will cast a spell which will allow you to use the portal before you.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "Now don't run off, this will only take a moment.")
end
