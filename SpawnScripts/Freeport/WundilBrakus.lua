function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  PlayAnimation(NPC, 11150, Spawn, 2)
  FaceTarget(NPC, Spawn)
end

function hailed(NPC, Spawn)
  PlayAnimation(NPC, 11682, Spawn)
end