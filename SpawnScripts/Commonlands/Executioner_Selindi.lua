function hailed(NPC, Spawn) 
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  Say(NPC, "Move along unless you want to join these skeletons.", Spawn) 
end 
