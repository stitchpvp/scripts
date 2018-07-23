function hailed(NPC, Spawn)
  local conversation = CreateConversation()
  
  AddConversationOption(conversation, "I'm sorry I do not know your brother.")
  StartConversation(conversation, NPC, Spawn, "Hello. It's nice to meet you, stranger. I've been waiting for news of my brother. I haven't heard from him in a very long time and I fear the worst.")
end