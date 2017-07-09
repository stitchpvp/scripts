function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I guess that depends on the menu.", "Option1")
	AddConversationOption(conversation, "No, I'm not hungry.")
	StartConversation(conversation, NPC, Spawn, "Mooshga meet new friend! You look hungry. Mooshga hungry. You hungry?")

	AddConversationOption(conversation, "I have brought you the ears that you asked for.", "Option2")
	AddConversationOption(conversation, "Nothing right now.")
	AddConversationOption(conversation, "I have the huge crab claws for your soup, Mooshga.", "Option3")
	AddConversationOption(conversation, "Good news Mooshga. I was able to gather the iron clusters you need to get your pot fixed.", "Option4")
	StartConversation(conversation, NPC, Spawn, "You back so quick! What you have for Mooshga?")

	AddConversationOption(conversation, "Yes, I am. I would love more of your cooking, Mooshga.", "Option5")
	AddConversationOption(conversation, "What? No thanks... I just ate.")
	StartConversation(conversation, NPC, Spawn, "You still look hungry! You hungry? Mooshga knows when people hungry. Mooshga will feed you but you do something for Mooshga first.")

	AddConversationOption(conversation, "What happened, Mooshga?", "Option6")
	AddConversationOption(conversation, "You seem busy. I'll come back another time.")
	StartConversation(conversation, NPC, Spawn, "The pot! Mooshga not believe what happened.")

	AddConversationOption(conversation, "Oh really, what are you making?", "Option7")
	AddConversationOption(conversation, "Oh no, I can't. I'm watching my diet.")
	StartConversation(conversation, NPC, Spawn, "You hungry now? Mooshga has idea for next meal. Come close so Mooshga not let others know secret of ancestor's recipe.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Come to think of it, I am hungry. What are you going to make?", "Option8")
	StartConversation(conversation, NPC, Spawn, "Mooshga is greatest baker in all Commonlands! You want Mooshga make somethin' for you?")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ogre cooking sounds scary to me. Bye!")
	AddConversationOption(conversation, "Jerky sounds good. I'll do it.", "Option9")
	StartConversation(conversation, NPC, Spawn, "Mooshga hungry for jerky. Plus Mooshga try to make old secret recipe of famous ancestor chef. You go collect pieces for jerky so Mooshga can figure out recipe! It made from hyena meat. Get carrion hound ears for Mooshga.")
end

function Option9(NPC, Spawn)
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

	AddConversationOption(conversation, "Thanks, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "Mooshga makes you some too. Here you go.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "Oooo... good! Mooshga gets back to making her goodies again. Mooshga don't need all iron to fix pot. You keep rest of iron.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What type of claws?", "Option10")
	AddConversationOption(conversation, "I think I just lost my appetite.")
	StartConversation(conversation, NPC, Spawn, "Mooshga make special surprise today. Mooshga needs claws for surprise recipe she figure out.")
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'm getting hungrier by the minute.", "Option11")
	AddConversationOption(conversation, "Oh... I think I just lost my appetite.")
	StartConversation(conversation, NPC, Spawn, "Mooshga need special claws from crabs. The HUGE ones. You find crabs in southeast. They live in freshwater. Near old tower there is good spot. You go find crabs and snap tasty claws off, then bring back to Mooshga.")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Oh, that does sound yummy. I'll be right back.", "Option12")
	StartConversation(conversation, NPC, Spawn, "Mooshga will make seafood surprise for you!")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Oh, that does sound yummy. I'll be right back.")
	StartConversation(conversation, NPC, Spawn, "Mooshga will make seafood surprise for you!")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Did you catch it?", "Option13")
	AddConversationOption(conversation, "Poor little squirrel. That's just mean, Mooshga. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Well...  Mooshga was cooking. After put water in Moosgha's cooking pot when fire was really hot, tasty squirrel run by. Mooshga thought would make tasty appetizer for dinner. Mooshga chased tasty and forgot about boiling pot.")
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure.", "Option14")
	AddConversationOption(conversation, "I don't have time right now, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "No, squirrel got away. When Mooshga return, all water was boiled away and pot got too hot. Mooshga tried put more water in pot, but pot cracked. Now Mooshga can't cook. Maybe you can help Mooshga fix pot?")
end

function Option14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok, I'll be right back.", "Option15")
	StartConversation(conversation, NPC, Spawn, "Okay! You go harvest the iron clusters for Mooshga and then can fix pot!")
end

function Option15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok, I'll be right back.")
	StartConversation(conversation, NPC, Spawn, "Okay! You go harvest the iron clusters for Mooshga and then can fix pot!")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Yes, I think I know the one.", "Option16")
	StartConversation(conversation, NPC, Spawn, "Mooshga knows what you like. Do you know of old statue on way to docks at sea?")
end

function Option16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Umm..  No thanks, Mooshga.")
	AddConversationOption(conversation, "I will get some essences.", "Option17")
	StartConversation(conversation, NPC, Spawn, "Good. Go to statue and find wisps. You bash them and bring back some for Mooshga. Mooshga make something good for you. You go get wisp essences for Mooshga! Mooshga will make yummy wisp tofu for you.")
end

function Option17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok, I'll be right back.", "Option18")
	StartConversation(conversation, NPC, Spawn, "Wisp tofu is delicious!")
end

function Option18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok, I'll be right back.")
	StartConversation(conversation, NPC, Spawn, "Wisp tofu is delicious!")
end
