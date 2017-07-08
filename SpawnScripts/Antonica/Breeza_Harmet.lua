function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "They are beautiful pieces.  Is it the game or the carving of wood that you like more?", "Option1")
	AddConversationOption(conversation, "I see.  Well, I will let you finish up your project in peace.  ")
	StartConversation(conversation, NPC, Spawn, "Hello, traveler!  I'm sorry about the mess. I'm carving a set of chess pieces, but I'm almost finished. Please, I'll only be a few minutes. Won't you listen to my story of the chessboard of Stormguard? I must know if it's only a story or if it bears any truth!")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Maybe you will be able to see it some day.", "Option2")
	StartConversation(conversation, NPC, Spawn, "I love carving and shaping the wood, but I enjoy the game even more. It's nice to sit in the warm sun playing chess with a friend. And talking about real queens and knights! Which reminds me ...   Did you know that the Knights of Thunder played chess, too? I heard stories that they hold their banquets upon a giant chessboard!  Oh, that'd be wonderful to see!")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Most call it Stormhold. I have heard tales of it. If I see this giant chessboard, I will return to tell you.")
	StartConversation(conversation, NPC, Spawn, "Oh no, not I.  I'm not an adventurer like you. I'm a mere fletcher who enjoys a good game of chess. Unfortunately, the banquet hall is within Stormguard, the legendary home of the Knights of Thunder. If you come across the fortress in your travels, would you return to me and let me know if the chessboard hall truly exists?")
end
