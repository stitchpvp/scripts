function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  local conversation = CreateConversation()

  AddConversationOption(conversation, "Um, please send me there. *gulps*", "teleport_1")
  AddConversationOption(conversation, "I would like to stay here to quest and explore.")
  StartConversation(conversation, NPC, Spawn, "You. I can send you to The Commonlands Spire if you'd like to get out of here. Otherwise, go on a quest journey on this island and leave me be. *growls*")
  Emote(NPC, " glares at you menacingly.", Spawn)
end

function hailed(NPC, Spawn)
  AddConversationOption(conversation, "Um, please send me there. *gulps*", "teleport_1")
  AddConversationOption(conversation, "I would like to stay here to quest and explore.")
  StartConversation(conversation, NPC, Spawn, "You. I can send you to The Commonlands Spire if you'd like to get out of here. Otherwise, go on a quest journey on this island and leave me be. *growls*")
end

function teleport_1(NPC, Spawn)
  Say(NPC, "So be it. Sending you there now...", Spawn)
  AddTimer(NPC, 5000, "teleport_2")
end

function teleport_2(NPC, Spawn)
  Zone(GetZone(033), Spawn)
end
