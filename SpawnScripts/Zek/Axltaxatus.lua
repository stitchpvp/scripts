function spawn(NPC, Spawn)
  AddTimer(NPC, 2000, "hate_swap")
end

function hate_swap(NPC, Spawn)
  local most_hated = GetMostHated(NPC)
  local group = GetGroup(most_hated)
  local player = group[math.random(#group)]
  local player2 = group[math.random(#group)]

  if IsInCombat(NPC) == true then
    if not IsAlive(player) then
      AddHate(NPC, player2, 9999999, 1)
    elseif IsAlive(player) then
      AddHate(NPC, player, 9999999, 1)
    end
  end

  if IsInCombat(NPC) == false then
    return
  end
  AddTimer(NPC, 20000, "hate_swap")
end
