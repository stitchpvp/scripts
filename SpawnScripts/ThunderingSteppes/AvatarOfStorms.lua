function attacked(NPC, Player)
  Say(NPC, "You dare challenge the power of the true stormlord. You shall pay dearly for this affront!")
  AddTimer(NPC, 44000, "StormsEmote")
  AddTimer(NPC, 45000, "SpawnAdds", 1, Player)
  AddTimer(NPC, 60000, "battleweary") --[[change back to 390000 when done testing]]
end

function StormsEmote(NPC)
  if IsInCombat(NPC) == false then
    return
end
  Say(NPC, "Spirits of the rain, aid your master!")
  AddTimer(NPC, 44000, "StormsEmote")
end

function battleweary(NPC)
  if IsInCombat(NPC) == false then
    return
end
  Say(NPC, "I see you grow tired from my onslaught, it won't be long now before victory is mine!")
  CastSpell(NPC, 1002183, 1) --[[Aura of Confidence]]
end

function SpawnAdds(NPC, Player)
  if IsInCombat(NPC) == false then
    return
end
  local zone = GetZone(NPC)
  local elementals = GetSpawnByGroupID(zone, 1043766)
  SpawnMob(zone, elementals, false, GetX(Player), GetY(Player), GetZ(Player), 90)
  AddHate(Player, elementals, 1)
  AddTimer(NPC, 45000, "SpawnAdds", 1, Player)
end

function death(NPC)
  local zone = GetZone(NPC)
  local elementals = GetSpawnByGroupID(zone, 1043766)
    Despawn(elementals)
end

function CombatReset(NPC)
  while true do
    local zone = GetZone(NPC)
    local elementals = GetSpawnByGroupID(zone, 1043766)
      if elementals == nil then
        break
      end
    Despawn(elementals)
  end
end