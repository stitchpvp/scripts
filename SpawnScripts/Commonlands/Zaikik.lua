function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  Say(NPC, "Outside! in the box! Don't be stupid!", Spawn)
end
