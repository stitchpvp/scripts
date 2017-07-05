function spawn(NPC)
   
end

function hailed(NPC, Spawn)
conversation = CreateConversation()
   FaceTarget(NPC, Spawn)
   Say(conversation, NPC, Spawn, "I beg of you to help me. These foul beasts have blocked off my escape. Help me  " .. Getname(spawn) .. " and I'll help you in return. ")
    AddConversationOption(conversation, "Yeah about that..", )
	StartConversation(conversation, NPC, Spawn, "Oh no! Please I can't survive this much longer!")
	
end