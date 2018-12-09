function spawn(NPC)
  SetPlayerProximityFunction(NPC, 5, "InRange")
end

function InRange(NPC, Spawn)
  CastSpell(Spawn, 137167011, 1, NPC)
  Despawn(NPC)
end
