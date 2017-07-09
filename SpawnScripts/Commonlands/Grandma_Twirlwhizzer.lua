function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  Say(NPC, "Oh dear me, who are you?", Spawn)
end
