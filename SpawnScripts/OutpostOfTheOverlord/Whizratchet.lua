function spawn(NPC)
  SetPlayerProximityFunction(NPC, 25, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 11150, Spawn)
end

function hailed(NPC, Spawn)
 Say(NPC, "As a banker it is my job to hold items and coin for you for safe-keeping. If you would like to learn more, speak with Trainer Vissa Sathliss. She is just east of me, around the corner.", Spawn)
end
