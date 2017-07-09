function hailed(NPC, Spawn) 
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  Say(NPC, "Yes..?", Spawn) 
end 
