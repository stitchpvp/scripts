function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

  AddConversationOption(conversation, "Thanks, I will do so.")
	StartConversation(conversation, NPC, Spawn, "Hello there, " .. GetName(Spawn) .. ". Menders like me repair your equipment after it gets damaged due to death. To learn more about repairs, speak to Trainer Vissa Sathliss nearby. I'll fix your gear for a small fee, but menders in Freeport won't be quite so generous!")
end
