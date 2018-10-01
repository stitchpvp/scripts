function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 11150, Spawn)
end

function hailed(NPC, Spawn)
  local conversation = CreateConversation()
  
  AddConversationOption(conversation, "I must meet someone soon and must be going. Good day.")
  StartConversation(conversation, NPC, Spawn, "Helloo there! Can you feel it? The wind is changing direction....")
end
