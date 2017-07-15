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
	AddConversationOption(conversation, "I have your wisp essences that you asked for, Mooshga.", "Option5")
	AddConversationOption(conversation, "Those rhinos were tough, but I was able to get the hooves you need for the muffins.", "Option6")
	StartConversation(conversation, NPC, Spawn, "You back so quick! What you have for Mooshga?")

	AddConversationOption(conversation, "Yes, I am. I would love more of your cooking, Mooshga.", "Option7")
	AddConversationOption(conversation, "What? No thanks... I just ate.")
	StartConversation(conversation, NPC, Spawn, "You still look hungry! You hungry? Mooshga knows when people hungry. Mooshga will feed you but you do something for Mooshga first.")

	AddConversationOption(conversation, "What happened, Mooshga?", "Option8")
	AddConversationOption(conversation, "You seem busy. I'll come back another time.")
	StartConversation(conversation, NPC, Spawn, "The pot! Mooshga not believe what happened.")

	AddConversationOption(conversation, "Oh really, what are you making?", "Option9")
	AddConversationOption(conversation, "Oh no, I can't. I'm watching my diet.")
	StartConversation(conversation, NPC, Spawn, "You hungry now? Mooshga has idea for next meal. Come close so Mooshga not let others know secret of ancestor's recipe.")

	AddConversationOption(conversation, "What type are you making?", "Option10")
	StartConversation(conversation, NPC, Spawn, "Mmmmm... You smell that? Mooshga gets ready to bake muffins. You want some?")

	AddConversationOption(conversation, "Yes, I have.", "Option11")
	AddConversationOption(conversation, "No, I don't have time.")
	StartConversation(conversation, NPC, Spawn, "You come to help Mooshga again?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Come to think of it, I am hungry. What are you going to make?", "Option12")
	StartConversation(conversation, NPC, Spawn, "Mooshga is greatest baker in all Commonlands! You want Mooshga make somethin' for you?")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ogre cooking sounds scary to me. Bye!")
	AddConversationOption(conversation, "Jerky sounds good. I'll do it.", "Option13")
	StartConversation(conversation, NPC, Spawn, "Mooshga hungry for jerky. Plus Mooshga try to make old secret recipe of famous ancestor chef. You go collect pieces for jerky so Mooshga can figure out recipe! It made from hyena meat. Get carrion hound ears for Mooshga.")
end

function Option13(NPC, Spawn)
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

	AddConversationOption(conversation, "Thanks, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "Mooshga very happy. Try some tasty Mooshga made.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Excellent.")
	StartConversation(conversation, NPC, Spawn, "Just what Mooshga need. This good for big batch.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What type of claws?", "Option14")
	AddConversationOption(conversation, "I think I just lost my appetite.")
	StartConversation(conversation, NPC, Spawn, "Mooshga make special surprise today. Mooshga needs claws for surprise recipe she figure out.")
end

function Option14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'm getting hungrier by the minute.", "Option15")
	AddConversationOption(conversation, "Oh... I think I just lost my appetite.")
	StartConversation(conversation, NPC, Spawn, "Mooshga need special claws from crabs. The HUGE ones. You find crabs in southeast. They live in freshwater. Near old tower there is good spot. You go find crabs and snap tasty claws off, then bring back to Mooshga.")
end

function Option15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Oh, that does sound yummy. I'll be right back.", "Option16")
	StartConversation(conversation, NPC, Spawn, "Mooshga will make seafood surprise for you!")
end

function Option16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Oh, that does sound yummy. I'll be right back.")
	StartConversation(conversation, NPC, Spawn, "Mooshga will make seafood surprise for you!")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Did you catch it?", "Option17")
	AddConversationOption(conversation, "Poor little squirrel. That's just mean, Mooshga. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Well...  Mooshga was cooking. After put water in Moosgha's cooking pot when fire was really hot, tasty squirrel run by. Mooshga thought would make tasty appetizer for dinner. Mooshga chased tasty and forgot about boiling pot.")
end

function Option17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure.", "Option18")
	AddConversationOption(conversation, "I don't have time right now, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "No, squirrel got away. When Mooshga return, all water was boiled away and pot got too hot. Mooshga tried put more water in pot, but pot cracked. Now Mooshga can't cook. Maybe you can help Mooshga fix pot?")
end

function Option18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok, I'll be right back.", "Option19")
	StartConversation(conversation, NPC, Spawn, "Okay! You go harvest the iron clusters for Mooshga and then can fix pot!")
end

function Option19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok, I'll be right back.")
	StartConversation(conversation, NPC, Spawn, "Okay! You go harvest the iron clusters for Mooshga and then can fix pot!")
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Yes, I think I know the one.", "Option20")
	StartConversation(conversation, NPC, Spawn, "Mooshga knows what you like. Do you know of old statue on way to docks at sea?")
end

function Option20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Umm..  No thanks, Mooshga.")
	AddConversationOption(conversation, "I will get some essences.", "Option21")
	StartConversation(conversation, NPC, Spawn, "Good. Go to statue and find wisps. You bash them and bring back some for Mooshga. Mooshga make something good for you. You go get wisp essences for Mooshga! Mooshga will make yummy wisp tofu for you.")
end

function Option21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok, I'll be right back.", "Option22")
	StartConversation(conversation, NPC, Spawn, "Wisp tofu is delicious!")
end

function Option22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok, I'll be right back.")
	StartConversation(conversation, NPC, Spawn, "Wisp tofu is delicious!")
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok. What do you need, Mooshga?", "Option23")
	StartConversation(conversation, NPC, Spawn, "Mooshga's favorite! Rhino muffins! Mooshga have no parts to next batch. If you want try muffins, you need get Mooshga ingredients.")
end

function Option23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Rhino hoof muffins? Yuck!  No thanks!")
	AddConversationOption(conversation, "That sounds crunchy. I guess I can do it, though.", "Option24")
	StartConversation(conversation, NPC, Spawn, "Mooshga need three-toed rhino feets. You go get three-toed rhino feets for Mooshga, then will make best muffins for you!")
end

function Option24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok, Mooshga. I'll be right back.")
	StartConversation(conversation, NPC, Spawn, "Yes. Rhino muffins very crunchy. Go collect for Mooshga.")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Your brother?", "Option25")
	AddConversationOption(conversation, "Sorry, Mooshga I don't have time to listen right now.")
	StartConversation(conversation, NPC, Spawn, "Mooshga run out of herbs. With so much cooking, Mooshga go through spices fast. Brother usually bring Mooshga fresh herbs, but brother didn't this week.")
end

function Option25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sorry, I don't have time for this.")
	AddConversationOption(conversation, "Good to know. What do you need me to do?")
	StartConversation(conversation, NPC, Spawn, "Yes! Mooshga's brother knows best herbs in forest. Nektulos Forest is where he find herbs. He spend lot of time there near bridge. Nektulos spices old family secret. They keep people coming for Mooshga's food.")
end
