function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 11150, Spawn)
end

function hailed(NPC, Spawn)
  Say(NPC, "If you need supplies, you best get 'em now! My wares go quickly. Hurry over, traveler. You mustn't wait! Come now!", Spawn)
end