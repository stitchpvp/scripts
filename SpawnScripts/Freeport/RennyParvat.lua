function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 11150, Spawn)
end

function hailed(NPC, Spawn)
  local conversation = CreateConversation()
  
  AddConversationOption(conversation, "What collections?", "Option1")
  AddConversationOption(conversation, "Goodbye!")
  StartConversation(conversation, NPC, Spawn, "What are you looking at? Stay away from me, and keep your hands off my collections, you scumbag!")
end

function Option1(NPC, Spawn)
  local conversation = CreateConversation()

  AddConversationOption(conversation, "I'll just be on my way.")
  StartConversation(conversation, NPC, Spawn, "What collections?  What do you mean, \"What collections\" My collections, you fool! If you think you're going to get them from me, you're wrong!  But if you have something to donate, then maybe we can talk.")
end