function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  Say(NPC, "Don't Hurst! Money in mailbox outside!", Spawn)
  PlayAnimation(NPC, 11256, Spawn, 1)
end
