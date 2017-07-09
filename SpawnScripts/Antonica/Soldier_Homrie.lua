function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "This is more than I can handle")
	StartConversation(conversation, NPC, Spawn, "Please, someone help me!  One of those ... blasted gnolls got me ... with a poison arrow.  Don't know how much time I have.")
end
