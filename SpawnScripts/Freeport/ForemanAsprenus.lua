function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 11150, Spawn, 2)
end

function hailed(NPC, Spawn)
  Say(NPC, "Before you go opening your mouth, remember that I'm a citizen of Freeport. A rich one at that.", Spawn)
end