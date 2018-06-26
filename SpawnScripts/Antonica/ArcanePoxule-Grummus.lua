function spawn(NPC)
  local Grummus = GetSpawn(NPC, 2520012)
  local most_hated = GetMostHated(Grummus)
  local sendmsgtoall = GetGroup(most_hated)
  SetTempVariable(Grummus, "poxule_dead_part_one", nil)
  SetTempVariable(Grummus, "poxule_dead_part_two", nil)
  SetTempVariable(Grummus, "poxule_dead_part_three", nil)
  AddTimer(NPC, 35000, "manifested")

  if not HasGroup(most_hated) then
    SendPopUpMessage(most_hated, "The poxules springs forth, which can manifest themselves into danger before long!", 239, 142, 38)
    SendMessage(most_hated, "The poxules springs forth, which can manifest themselves into danger before long!", "red")
  else
    for _, players in ipairs(sendmsgtoall) do
    SendPopUpMessage(players, "The poxules springs forth, which can manifest themselves into danger before long!", 239, 142, 38)
    SendMessage(players, "The poxules springs forth, which can manifest themselves into danger before long!", "red")
    end
  end
end

function manifested(NPC, Spawn)
  local Grummus = GetSpawn(NPC, 2520012)
  local most_hated = GetMostHated(Grummus)
  local trauma = GetSpawn(NPC, 2520038)
  local sendmsgtoall = GetGroup(most_hated)

-- only arcane is alive
  if IsAlive(NPC) and not IsAlive(trauma) then 
    if GetTempVariable(Grummus, "poxule_dead_part_two") == nil then
      if not HasGroup(most_hated) then
        SendPopUpMessage(most_hated, "Arcane poxule was up for too long and have manifested! The end of all that is...", 255, 0, 0)
        SendMessage(most_hated, "Arcane poxule was up for too long and have manifested! The end of all that is...", "red")
      else
        for _, players in ipairs(sendmsgtoall) do
        SendPopUpMessage(players, "Arcane poxule was up for too long and have manifested! The end of all that is...", 255, 0, 0)
        SendMessage(players, "Arcane poxule was up for too long and have manifested! The end of all that is...", "red")
        end
      end
	
      if GetTempVariable(NPC, "manifested_spawned") == nil then
        SpawnManifested(NPC, Spawn)
      end
	end

-- both poxules are alive
  elseif IsAlive(NPC) == true and IsAlive(trauma) == true then
	if GetTempVariable(Grummus, "poxule_dead_part_three") == nil then
      if not HasGroup(most_hated) then
        SendPopUpMessage(most_hated, "The poxules were up for too long and have manifested! The end of all that is...", 255, 0, 0)
        SendMessage(most_hated, "The poxules were up for too long and have manifested! The end of all that is...", "red")
      else
        for _, players in ipairs(sendmsgtoall) do
        SendPopUpMessage(players, "The poxules were up for too long and have manifested! The end of all that is...", 255, 0, 0)
        SendMessage(players, "The poxules were up for too long and have manifested! The end of all that is...", "red")
        end
      end
	
      if GetTempVariable(NPC, "manifested_spawned") == nil then
        SpawnManifested(NPC, Spawn)
      end
	end
  end
end

function SpawnManifested(Spawn)
  local zone = GetZone(Spawn)
  local Grummus = GetSpawn(Spawn, 2520012)
  local trauma = GetSpawn(Spawn, 2520038)
  local most_hated = GetMostHated(Grummus)

  SpawnMob(zone, 2520037, false, GetX(most_hated), GetY(most_hated), GetZ(most_hated), GetHeading(most_hated) - 90)

  local manifested = GetSpawn(Spawn, 2520037)
  
  AddHate(most_hated, manifested, 1)
  SetTempVariable(Spawn, "manifested_spawned", "true")
  SetTempVariable(Grummus, "poxule_dead_part_one", "true")
  SetTempVariable(Grummus, "poxule_dead_part_two", "true")
  SetTempVariable(Grummus, "poxule_dead_part_three", "true")
  Despawn(trauma)
  Despawn(Spawn)
end

function killed(NPC)
  local Grummus = GetSpawn(NPC, 2520012)
  CastSpell(Grummus, 209997759, 1, NPC) --Consume Soul
end