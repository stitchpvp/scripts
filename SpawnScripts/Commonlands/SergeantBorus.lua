function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I don't like the sound of that.")
	StartConversation(conversation, NPC, Spawn, "You look useful.  How about lending the Militia a hand? Or do you need a direct order handed down from the Overlord himself?")
end
