function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 11150, Spawn)
end

function hailed(NPC, Spawn)
  local conversation = CreateConversation()
  AddConversationOption(conversation, "Okay.")
  StartConversation(conversation, NPC, Spawn, "I've got these fine scrolls for sale, do take a look at them.")
end
