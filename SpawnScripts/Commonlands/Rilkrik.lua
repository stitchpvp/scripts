function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  Say(NPC, "Not Everything I have for sale is useful to everyone. Keep that in mind.", Spawn)
 end
 