function hailed(NPC, Spawn) 
  FaceTarget(NPC, Spawn) 
  local conversation = CreateConversation()

	AddConversationOption(conversation, "I'm not on official business.")
	StartConversation(conversation, NPC, Spawn, "On your way -- unless you're here on official business.  I've got enough work here for ten men, and only two at my disposal!")
end
