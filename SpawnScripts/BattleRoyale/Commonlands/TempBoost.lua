function spawn(NPC)
  SetPlayerProximityFunction(NPC, 5, "InRange")
end

function InRange(NPC, Spawn)
  local random = math.random(1, 4)

  if random == 1 then
    CastSpell(Spawn, 137167011, 1) -- Coalesce
  elseif random == 2 then
    CastSpell(Spawn, 13413213, 1) -- Sonic-Like Speed
  elseif random == 3 then
    CastSpell(Spawn, 191809526, 1) -- Slow Time
  elseif random == 4 then
    CastSpell(Spawn, 201959562, 1) -- Into the Shadows!
  end
  Despawn(NPC)
end
