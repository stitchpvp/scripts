function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  Say(NPC, "....sigh... Hello there... You remind me of him, somehow...", Spawn)
end
