function hailed(NPC, Spawn)
  local conversation = CreateConversation()
  AddConversationOption(conversation, "I'm not really looking for a broom today, but thanks anyway.")
  StartConversation(conversation, NPC, Spawn, "Good day to you, deary! I make the most wonderful brooms--strong bristles, stout handles, and quite stylish if you ask me. Great for sweeping off your doorstep or scaring off little critters!")
  PlayAnimation(NPC, 11286, Spawn)
end
