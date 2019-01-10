function hailed(NPC, Spawn)
  PlayAnimation(NPC, 12168, Spawn)
  local conversation = CreateConversation()
  AddConversationOption(conversation, "I'll keep my eyes out for them.")
  StartConversation(conversation, NPC, Spawn, "Hello! If you happen to find the Cloak of Crystal Shards, Assassin Master's Cloak and Cloak of Runes upon your travels, please let me know. I'll make it worth your while!")
end
