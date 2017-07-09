function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Nothing right now thanks.")
	StartConversation(conversation, NPC, Spawn, "Welcome to Gnollslayer Keep!  I'm Geddard, the only merchant for leagues.  If I don't got it, you don't need it!  What'll it be for you today?")
end
