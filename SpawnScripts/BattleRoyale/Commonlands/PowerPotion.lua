function spawn(NPC)
  SetPlayerProximityFunction(NPC, 5, "InRange")
end

function InRange(NPC, Spawn)
  CastSpell(Spawn, 92653671, 1, NPC)
  Despawn(NPC)
end
