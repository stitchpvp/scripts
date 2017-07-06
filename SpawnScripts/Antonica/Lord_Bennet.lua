
function spawn(NPC)
end

function respawn(NPC)
  spawn(NPC)
end

function hailed(NPC, Spawn)
  conversation = CreateConversation()
  local choice = math.random(1, 2)

  if choice == 1 then
    Say(conversation, NPC, Spawn, "Ha, " .. GetName(Spawn) .. " these guard's can't protect you for too long!")
    AddConversationOption(conversation, "Am I trapped?")
    StartConversation(conversation, NPC, Spawn, "Fight with dignity!")
  elseif choice == 2 then
    Say(conversation, NPC, Spawn, " Did I just see a title?")
  end
end