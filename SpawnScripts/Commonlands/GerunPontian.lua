function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What makes it so dreary?", "Option1")
	AddConversationOption(conversation, "I have to go.")
	StartConversation(conversation, NPC, Spawn, "Gerun Pontian of the Militia. I watch the gates. I assure you a more dreary job does not exist in all of D'Lere.")

	AddConversationOption(conversation, "Not yet.")
	AddConversationOption(conversation, "Yes, here it is.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Did you get the venom?")

	AddConversationOption(conversation, "Yes.", "Option3")
	StartConversation(conversation, NPC, Spawn, "Do you have the shells?")

	AddConversationOption(conversation, "Yes.", "Option4")
	StartConversation(conversation, NPC, Spawn, "Did you get the hides?")

	AddConversationOption(conversation, "Yes, they are dead.", "Option5")
	StartConversation(conversation, NPC, Spawn, "Are the orcs dead?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How does this post turn profit?", "Option6")
	StartConversation(conversation, NPC, Spawn, "Who attacks the gates of Freeport? Orcs? Dervish Cutthroats? Qeynosians? Hah! The only good thing about this post is it gives me a lot of time. And even the most daft of fools knows that time equals money.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What do you need?", "Option7")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Like I said, I've got free time. So while I'm out here I can acquire commodities that I can then sell to the merchants of Freeport. If I can't be out there earning glory, I'll stay back here and earn coin. Care to help?")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure.", "Option8")
	StartConversation(conversation, NPC, Spawn, "Venom has been selling quite nicely. There are quite a few speckled rattlers around here. They're a great source of venom. If you bring me back the venom from eight of them I'll give you a portion of what the profit will be. Sound good?")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, NPC, Spawn, "Great! I'll be here, of course.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "More venom?", "Option9")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Great! This will fetch a nice amount. There's more where that came from if you're interested.")
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Not interested.")
	AddConversationOption(conversation, "Sure, I'll get the shells.", "Option10")
	StartConversation(conversation, NPC, Spawn, "Nah, this will take a while to sell. If I have more venom I risk driving down my own price. But there's plenty of wildlife around here that is willing to be exploited for our benefit! The shells of the small emerald beetles around here are very commonly used in jewelry. If you collect six of their shells I'll have enough to make a bulk sale. What do you say?")
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Excellent. Make sure they aren't cracked or anything!")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Yeah, I can do more.", "Option11")
	AddConversationOption(conversation, "Sorry, not interested right now.")
	StartConversation(conversation, NPC, Spawn, "Great! Are you tired yet or can you do more?")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Not interested.")
	AddConversationOption(conversation, "I can get them.", "Option12")
	StartConversation(conversation, NPC, Spawn, "All right. I've got some buyers lined up for some armadillo hides. You can find some if you follow the road west and along the wall that stretches to the north. I need ten of their hides.")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "I'm sure you will.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "No problem.  Glad I could help.", "Option13")
	StartConversation(conversation, NPC, Spawn, "Good work. You've made us both quite a bit of coin. Thanks for the help. I'm sorry that my tasks have been so dull. It's hard to pull the important missions when you're a lowly gate patrol.")
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What is it?", "Option14")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "I do have something a bit more exciting if you're interested.")
end

function Option14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure.")
	AddConversationOption(conversation, "Not interested.", "Option15")
	StartConversation(conversation, NPC, Spawn, "Well, a while back I got a low priority assignment to take care of the ghostly orcs north of here in the Siegelands. I've been putting it off. I hate orcs almost as much as I hate ghosts. If you take care of these ghostly orcs for me I'll pay you what I was slated to receive. What do you say?")
end

function Option15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll let you know when I've done this.")
	StartConversation(conversation, NPC, Spawn, "Great, that's a relief to hear. Don't worry about the spectral defenders. Like the ghostly orcs, they imagine they are in some never-ending war. I don't think they even realize they're dead. It's sad, really. Anyway, ghostly orcs: take out ten of them, those were my orders.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Yeah, I'm interested.", "Option16")
	AddConversationOption(conversation, "Nope.")
	StartConversation(conversation, NPC, Spawn, "Ah, most excellent. Thank you very much. Listen... they sent you to me to see if you were able to get things done. I know I've been sending you around doing menial stuff, but you seem to follow orders quite well. If you're interested in working for us, and increasing your exposure--even to the Overlord himself--I have someone I can put you in contact with. Interested?")
end

function Option16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I will find him.", "Option17")
	StartConversation(conversation, NPC, Spawn, "I thought you might be. He won't be sending you after any armadillos either! Go south of here, past the Turmoil Cemetery. There is an old, ruined tower where you can find Rainus Canton. He will have tasks for you, without a doubt.")
end

function Option17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "May the Overlord hasten your path," .. Get(Spawn .. ".)
end
