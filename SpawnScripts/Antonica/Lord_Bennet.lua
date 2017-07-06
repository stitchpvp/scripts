
function spawn(NPC)
end

function respawn(NPC)
  spawn(NPC)
end

function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)

  local conversation = CreateConversation()
  local choice = math.random(1, 2)

  if choice == 1 then
    AddConversationOption(conversation, "Am I trapped?", "trapped")
    StartConversation(conversation, NPC, Spawn, "Ha, " .. GetName(Spawn) .. " these guard's can't protect you for too long!")
  elseif choice == 2 then
    AddConversationOption(conversation, "You've got to be kidding..")
    StartConversation(conversation, NPC, Spawn, "Did I just see a title?")
  end
end
  
function trapped(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  
  Say(NPC, "Fight with some dignity!", Spawn)
  PlayAnimation(NPC, 12214, Spawn, 1)
end
