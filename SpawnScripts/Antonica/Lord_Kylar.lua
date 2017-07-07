function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
  Say(NPC,"I Really don't think you and I need to talk!", Spawn)
end