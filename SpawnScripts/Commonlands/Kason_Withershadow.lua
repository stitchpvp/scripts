function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  Say(NPC, "Just fishing my cares away! You should pick up a pole and give it a whirl!", Spawn)
end
