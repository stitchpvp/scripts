function spawn(NPC)
   
end

function hailed(NPC, Spawn)
 conversation = CreateConversation()
   FaceTarget(NPC, Spawn)
   StartConversation(conversation, NPC, Spawn, "I beg of you to help me. These foul beasts have blocked off my escape. Help me  " .. Getname(spawn) .. " and I'll help you in return. ")
   AddConversationOption(conversation, "Yeah about that..", "scared" )
	PlayAnimation (npc, 10844, player, 1)
end

function scared(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  Say(NPC, "Oh no! Please I can't survive this much longer!", Spawn)
  PlayAnimation (npc, 11275, player, 1)
end