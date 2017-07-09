function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "That's good to know.  See you around!")
	StartConversation(conversation, NPC, Spawn, "Greetings.  Janus Fieri, at your service.")
end
