function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 11150, Spawn)
end

function hailed(NPC, Spawn)
  local conversation = CreateConversation()
  AddConversationOption(conversation, "Thank you for your time.  I must be going now.")
  StartConversation(conversation, NPC, Spawn, "Hello.  Hello.  Welcome.  You look out of place here in Freeport.  Almost as if you were something blown in by the wind or swept ashore by the tide.  No wait.  It was that dream!")
end
