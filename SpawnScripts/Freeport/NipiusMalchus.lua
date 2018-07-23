function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 11150, Spawn)
end

function hailed(NPC, Spawn)
  local conversation = CreateConversation()
  
  AddConversationOption(conversation, "It would be best if you forgot I was ever here...")
  StartConversation(conversation, NPC, Spawn, "Hail to you as well.  Forgive me if we've met before...  I'm a little distracted.  I've more custom orders for armor than I've the tradesmen to match.")
end