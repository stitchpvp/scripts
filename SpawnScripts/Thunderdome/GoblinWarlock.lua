function spawn(NPC)
  find_victim(NPC)
end

function respawn(NPC)
  spawn(NPC)
end

function find_victim(NPC)
  if IsInCombat(NPC) == false then
    local victim = GetSpawn(NPC, 7720007)
    
    AddHate(NPC, victim, 1)
  end

  AddTimer(NPC, 5000, "find_victim")
end