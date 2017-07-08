function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  Say(NPC, "If you see something you need just let me know." , Spawn)
end 