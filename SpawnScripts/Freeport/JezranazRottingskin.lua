function hailed(NPC, Spawn)
  local conversation = CreateConversation()
  
  AddConversationOption(conversation, "Uh, I don't know, but it sure looks like you need one.")
  StartConversation(conversation, NPC, Spawn, "Curses, where is da doctor in the district?")
end