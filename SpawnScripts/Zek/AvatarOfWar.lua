function attacked(NPC, Player)
  Say(NPC, "How dare you attack War incarnate!")
  AddTimer(NPC, 5000, "debuffs")
  AddTimer(NPC, 35000, "SpawnAddsMsg")
  AddTimer(NPC, 45000, "Plaguebound")
  AddTimer(NPC, 390000, "battleweary")
  AddTimer(NPC, 510000, "combat_fatigue")
end

function debuffs(NPC)
  if IsInCombat(NPC) == false then
    return
  else
    CastSpell(NPC, 118670389, 1, NPC) --Unwavering Faith
    CastSpell(NPC, 203266846, 1, NPC) --Shimmer of Disease

    AddTimer(NPC, math.random(6000, 10000), "debuffs") -- re-apply this in case of resurrections
  end
end

function killed(NPC)
  CastSpell(NPC, 209997759, 1, NPC, true) --Consume Soul
end

function Plaguebound(NPC, Spawn)
  local most_hated = GetMostHated(NPC)
  local group = GetGroup(most_hated)

  AddTimer(NPC, 45000, "Plaguebound")

  local player = group[math.random(#group)]
    if not IsAlive(player) then
      return false
    else
      CastSpell(player, 5038031, 1)
    end
  end
end
