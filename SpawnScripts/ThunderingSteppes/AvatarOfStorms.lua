function attacked(NPC, Player)
  Say(NPC, "You dare challenge the power of the true stormlord. You shall pay dearly for this affront!")
  AddTimer(NPC, 1000, "debuffs"))
  AddTimer(NPC, 45000, "SpawnAdds")
  AddTimer(NPC, 390000, "battleweary")
  AddTimer(NPC, 510000, "combat_fatigue")
  AddTimer(NPC, 560000, "total_exhaustion")
end

function debuffs(NPC)
  if IsInCombat(NPC) == false then
    return
  else
    CastSpell(NPC, 59509897, 1, NPC) --The Stormfather's Vortex
    CastSpell(NPC, 212642348, 1, NPC) --Shroud of Clouds

    AddTimer(NPC, math.random(6000, 10000), "debuffs") -- re-apply this in case of resurrections
  end
end

function SpawnAdds(NPC, Player)
  if IsInCombat(NPC) == false then
    return
  else
    Say(NPC, "Spirits of the rain, aid your master!")
    local zone = GetZone(NPC)
    local elemental_1 = SpawnMob(zone, 2520023, false, GetX(NPC) + 10, GetY(NPC), GetZ(NPC) + 10, 90)
    local elemental_2 = SpawnMob(zone, 7720018, false, GetX(NPC) - 10, GetY(NPC), GetZ(NPC) - 10, 90)
    AddHate(Player, elemental_1, 1)
    AddHate(Player, elemental_2, 1)
    AddTimer(NPC, 45000, "SpawnAdds")
  end
end

function battleweary(NPC)
  if IsInCombat(NPC) == false then
    return
  else
    Say(NPC, "I see you grow tired from my onslaught, it won't be long now before victory is mine!")
    CastSpell(NPC, 87835731, 1) --Aura of Confidence
    CastSpell(NPC, 220077792, 1, NPC) --Battleweary
  end
end

function combat_fatigue(NPC)
  if IsInCombat(NPC) == false then
    return
  else
    Say(NPC, "Your exhaustion betrays you, it will all be over soon enough!")
    CastSpell(NPC, 108880402, 1) --Aura of Cockiness
    CastSpell(NPC, 177432220, 1, NPC) --Combat Fatigue
  end
end

function total_exhaustion(NPC)
  if IsInCombat(NPC) == false then
    return
  else
    Say(NPC, "You can barely stand, I end this NOW!")
    CastSpell(NPC, 224732053, 1) --Aura of Contempt
    CastSpell(NPC, 264469801, 1, NPC) --Total Exhaustion
  end
end

function death(NPC)
  local elemental_1 = GetSpawn(NPC, 2520023)
  local elemental_2 = GetSpawn(NPC, 7720018)

  if elemental_1 ~= nil then
    Despawn(elemental_1)
  end

  if elemental_2 ~= nil then
    Despawn(elemental_2)
  end
end

function CombatReset(NPC)
  local elemental_1 = GetSpawn(NPC, 2520023)
  local elemental_2 = GetSpawn(NPC, 7720018)

  while true do
      if elemental_1 == nil then
        break
      end

      if elemental_2 == nil then
        break
      end
    Despawn(elemental_1)
    Despawn(elemental_2)
  end
end
