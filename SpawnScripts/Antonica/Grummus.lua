function spawn(NPC)
  Say(NPC, "Argggh!")
  local Spawn = GetSpawn(NPC, 2520010) --[Avatar of Health]]
  SetInCombat(Spawn, true)
  AddTimer(NPC, 45000, "battleweary") --[[change back to 390000 when done testing]]
end

function battleweary(NPC)
  if IsInCombat(NPC) == false then
    return
end
  Say(NPC, "I see you grow tired from my onslaught, it won't be long now before victory is mine!")
  CastSpell(NPC, 1002183, 1) --[[Aura of Confidence]]
end

function death(NPC)
  local Spawn = GetSpawn(NPC, 2520010)
  Say(Spawn, "You have engaged in a struggle without cause and although you prevailed, there was little reason to entertain the folly of disease... Only with inner peace and discipline can true, lasting health thrive.")
  Despawn(Spawn, 10000)
end