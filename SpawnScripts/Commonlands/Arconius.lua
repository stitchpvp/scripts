function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
  Say(NPC, "Oh Dear.. It seem's I have dropped something down the well.", Spawn)
  SpawnSet(Spawn, "visual_state", 13167)
end