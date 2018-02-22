function spawn(NPC)
  Say(NPC, "Argggh!")
  local Spawn = GetSpawn(NPC, 2520010) --[Avatar of Health]]
  SetInCombat(Spawn, true)
  AddTimer(NPC, 45000, "battleweary") --[[change back to 390000 when done testing]]
end

function battleweary(NPC, Spawn)
  if IsInCombat(NPC) == false then
  return
end
  Say(NPC, "I see you grow tired from my onslaught, it won't be long now before victory is mine!")
  CastSpell(NPC, 1002183, 1) --[[Aura of Confidence]]
  CastSpell(Spawn, 1002186, 1, NPC) --[Battleweary]]
end

function death(NPC)
  local Spawn = GetSpawn(NPC, 2520010)
  SetTempVariable(Spawn, "say", nil)
  Say(Spawn, "You have engaged in a struggle without cause and although you prevailed, there was little reason to entertain the folly of disease... Only with inner peace and discipline can true, lasting health thrive.")
  SpawnSet(NPC, "visual_state", 0)
  Despawn(Spawn, 10000)
end

function CombatReset(NPC)
  local Spawn = GetSpawn(NPC, 2520010)
  SetTempVariable(Spawn, "grummus_spawned", nil)
  SetTempVariable(Spawn, "say", nil)
  SpawnSet(Spawn, "visual_state", 0)
  Despawn(NPC)
end
