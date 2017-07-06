
function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
	local choice = math.random(1, 2)
	if choice == 1 then
    AddConversationOption(conversation, "Am I trapped?", "trapped")
    StartConversation(conversation, NPC, Spawn, "Ha, " .. GetName(Spawn) .. " these guard's can't protect you for too long!")
	elseif choice == 2 then
	  StartConversation(conversation, NPC, Spawn, " Did I just see a title?")
    AddConversationOption(conversation, "You've got to be kidding.." )
	end
  
function trapped (NPC, Spawn)
    FaceTarget (NPC, Spawn)
    
    Say(npc, "Fight with some dignity!", Spawn)
    PlayAnimation (npc, 12214, player, 1)
  
end