function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I guess that depends on the menu.", "Option1")
	AddConversationOption(conversation, "No, I'm not hungry.")
	StartConversation(conversation, NPC, Spawn, "Mooshga meet new friend! You look hungry. Mooshga hungry. You hungry?")

	AddConversationOption(conversation, "I have brought you the ears that you asked for.", "Option2")
	StartConversation(conversation, NPC, Spawn, "You back so quick! What you have for Mooshga?")

	AddConversationOption(conversation, "Yes, I am. I would love more of your cooking, Mooshga.", "Option3")
	AddConversationOption(conversation, "What? No thanks... I just ate.")
	StartConversation(conversation, NPC, Spawn, "You still look hungry! You hungry? Mooshga knows when people hungry. Mooshga will feed you but you do something for Mooshga first.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Come to think of it, I am hungry. What are you going to make?", "Option4")
	StartConversation(conversation, NPC, Spawn, "Mooshga is greatest baker in all Commonlands! You want Mooshga make somethin' for you?")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ogre cooking sounds scary to me. Bye!")
	AddConversationOption(conversation, "Jerky sounds good. I'll do it.", "Option5")
	StartConversation(conversation, NPC, Spawn, "Mooshga hungry for jerky. Plus Mooshga try to make old secret recipe of famous ancestor chef. You go collect pieces for jerky so Mooshga can figure out recipe! It made from hyena meat. Get carrion hound ears for Mooshga.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Okay, I'll be right back.")
	StartConversation(conversation, NPC, Spawn, "Good...Yes, Mooshga make Hyena Jerky for you.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "Oh, thanks you! You make Mooshga happy Ogre.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What type of claws?", "Option6")
	AddConversationOption(conversation, "I think I just lost my appetite.")
	StartConversation(conversation, NPC, Spawn, "Mooshga make special surprise today. Mooshga needs claws for surprise recipe she figure out.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'm getting hungrier by the minute.", "Option7")
	AddConversationOption(conversation, "Oh... I think I just lost my appetite.")
	StartConversation(conversation, NPC, Spawn, "Mooshga need special claws from crabs. The HUGE ones. You find crabs in southeast. They live in freshwater. Near old tower there is good spot. You go find crabs and snap tasty claws off, then bring back to Mooshga.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Oh, that does sound yummy. I'll be right back.", "Option8")
	StartConversation(conversation, NPC, Spawn, "Mooshga will make seafood surprise for you!")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Oh, that does sound yummy. I'll be right back.")
	StartConversation(conversation, NPC, Spawn, "Mooshga will make seafood surprise for you!")
end
