function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 11150, Spawn)
end

function hailed(NPC, Spawn)
  Say(NPC, "The Grand Inquisitor speaks for Sir Lucan in all matters regarding the Dismal Rage.", Spawn)
  PlayAnimation(NPC, 121, Spawn)
end