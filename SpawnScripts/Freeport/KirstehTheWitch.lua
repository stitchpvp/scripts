function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  PlayAnimation(NPC, 11150, Spawn)
  FaceTarget(NPC, Spawn)
end

function hailed(NPC, Spawn)
  local conversation = CreateConversation()
  
  if GetArchetypeName(Spawn) ~= "Mage" then
    StartConversation(conversation, NPC, Spawn, "I'll ask you to leave before I lose my patience and turn your limbs into blackened withered stumps.")
    PlayAnimation(NPC, 11628, Spawn)
  else
    return
  end
end