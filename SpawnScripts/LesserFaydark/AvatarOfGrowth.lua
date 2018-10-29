function attacked(NPC)
  Say(NPC, "You dare attack the mother of nature and goddess of growth? Prepare to meet nature's fury!")
  AddTimer(NPC, 1000, "debuffs")
  AddTimer(NPC, 5000, "SpawnAdds")
  AddTimer(NPC, 45000, "MotherNaturesRebuke")
  AddTimer(NPC, 45000, "NaturesScorn")
  AddTimer(NPC, 30000, "NaturesRage")
  AddTimer(NPC, 10000, "CurseOfTunare")
  AddTimer(NPC, 390000, "battleweary")
  AddTimer(NPC, 510000, "combat_fatigue")
  AddTimer(NPC, 560000, "total_exhaustion")
end

function debuffs(NPC)
  if IsInCombat(NPC) == false then
    return
  else
    CastSpell(NPC, 92091026, 1, NPC) --Eye of the Lurker
    CastSpell(NPC, 94281504, 1, NPC) --Nature's Way

    AddTimer(NPC, math.random(6000, 10000), "debuffs") -- re-apply this in case of resurrections
  end
end

function killed(NPC)
  CastSpell(NPC, 209997759, 1, NPC, true) --Consume Soul
end

function SpawnAdds(NPC)
  if IsInCombat(NPC) == false then
    return
  else
    local player = GetMostHated(NPC)
    local guardian = SpawnMob(GetZone(NPC), 2520044, false, GetX(NPC) + 20, GetY(NPC), GetZ(NPC) + 20, 90)
    local wizard = SpawnMob(GetZone(NPC), 2520045, false, GetX(NPC) + 25, GetY(NPC), GetZ(NPC) + 25, 90)
    local acolyte = SpawnMob(GetZone(NPC), 2520046, false, GetX(NPC) + 30, GetY(NPC), GetZ(NPC) + 30, 90)
    AddHate(player, guardian, 1)
    AddHate(player, wizard, 1)
    AddHate(player, acolyte, 1)
    AddTimer(NPC, 25000, "SpawnAdds")
  end
end

function NaturesRage(NPC)
  if IsInCombat(NPC) == false then
    return
  else
    CastSpell(NPC, 62859182, 1, NPC)
    AddTimer(NPC, 30000, "NaturesRage")
  end
end

function MothersNatureRebuke(NPC)
  if IsInCombat(NPC) == false then
    return
  else
    local most_hated = GetMostHated(NPC)
    local group = GetGroup(most_hated)
    local player = group[math.random(#group)]

    if not IsAlive(player) then
      local player2 = group[math.random(#group)]
      CastSpell(player2, 96457182, 1, NPC)
    else
      CastSpell(player, 96457182, 1, NPC)
    end
    AddTimer(NPC, math.random(15000,17000), "MothersNatureRebuke")
  end
end

function CurseOfTunare(NPC)
  if IsInCombat(NPC) == false then
    return
  else
    local most_hated = GetMostHated(NPC)
    local group = GetGroup(most_hated)
    local player = group[math.random(#group)]

    if not IsAlive(player) then
      local player2 = group[math.random(#group)]
      CastSpell(player2, 57868531, 1, NPC)
    else
      CastSpell(player, 57868531, 1, NPC)
    end
    AddTimer(NPC, math.random(25000,40000), "CurseOfTunare")
  end
end

function NaturesScorn(NPC)
  if IsInCombat(NPC) == false then
    return
  else
    local most_hated = GetMostHated(NPC)
    local group = GetGroup(most_hated)
    local player = group[math.random(#group)]

    if not IsAlive(player) then
      local player2 = group[math.random(#group)]
      CastSpell(player2, 43166296, 1, NPC)
    else
      CastSpell(player, 43166296, 1, NPC)
    end
    AddTimer(NPC, math.random(5000,15000), "NaturesScorn")
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
  local guardian = GetSpawn(NPC, 2520044)
  local wizard = GetSpawn(NPC, 2520045)
  local acolyte = GetSpawn(NPC, 2520046)

  if guardian ~= nil then
    Despawn(guardian)
  end

  if wizard ~= nil then
    Despawn(wizard)
  end

  if acolyte ~= nil then
    Despawn(acolyte)
  end
  DropChest(NPC)
end

function CombatReset(NPC)
  while true do
    local guardian = GetSpawn(NPC, 2520044)

    if guardian == nil then
      break
    end

    Despawn(guardian)
  end

  while true do
    local wizard = GetSpawn(NPC, 2520045)

    if wizard == nil then
      break
    end

    Despawn(wizard)
  end

  while true do
    local acolyte = GetSpawn(NPC, 2520046)

    if acolyte == nil then
      break
    end

    Despawn(acolyte)
  end
end
