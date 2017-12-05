function hailed(NPC, Spawn)
  local conversation = CreateConversation()
  FaceTarget(NPC, Spawn)
  StartConversation(conversation, NPC, Spawn, "I beg of you to help me. These foul beasts have blocked off my escape. Help me  " .. GetName(spawn) .. " and I'll help you in return. ")
  AddConversationOption(conversation, "Yeah about that..", "scared" )
  PlayAnimation(NPC, 10844, Spawn, 1)
end

function scared(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  Say(NPC, "Oh no! Please I can't survive this much longer!", Spawn)
  PlayAnimation(NPC, 11275, Spawn, 1)
end
