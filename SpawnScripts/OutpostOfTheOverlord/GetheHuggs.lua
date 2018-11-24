function hailed(NPC, Spawn)
  local conversation = CreateConversation()

  PlayAnimation(NPC, 11682, Spawn)
  AddConversationOption(conversation, "I don't have any at the moment.")
  StartConversation(conversation, NPC, Spawn, "Hello there!  If you have any collections that you've completed, I can take them off your hands and reward you for your time.  I'm just crazy for collections!")
end
