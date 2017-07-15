function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'm sorry, didn't mean to disturb!")
	StartConversation(conversation, NPC, Spawn, "Oh ho!  I ain't got time to stop and chat, laddie!  These darn gnolls sprout up faster 'n I can keep 'em down, and my eyes ain't so good as they used to be.  Be fast!  What'cha need?")
end
