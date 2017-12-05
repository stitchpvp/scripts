function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  Say(NPC, "What?", Spawn)
  PlayAnimation(NPC, 11882, Spawn, 1)
end
