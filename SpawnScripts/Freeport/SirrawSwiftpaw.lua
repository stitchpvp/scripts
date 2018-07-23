function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 11150, Spawn)
end

function hailed(NPC, Spawn)
  Say(NPC, "I'm Sirraw Swiftpaw of the Seafuries. I know everything important that happens in the city. I know nothing of you, therefore you're not important. Leave!", Spawn)
end