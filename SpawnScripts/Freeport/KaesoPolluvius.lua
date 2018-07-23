function hailed(NPC, Spawn)
  local conversation = CreateConversation()
  
  AddConversationOption(conversation, "No.")
  StartConversation(conversation, NPC, Spawn, "You looking for someone?")
end