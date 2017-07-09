function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Indeed!  Sadly, I do not have time to appreciate it now. ")
	StartConversation(conversation, NPC, Spawn, "The view from here is amazing, isn't it?  I could gaze out these windows for hours.  Sometimes I do.  Ah, the beauty of Antonica ...")
end
