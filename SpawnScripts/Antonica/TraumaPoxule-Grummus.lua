function spawn(NPC)
  AddTimer(NPC, 35000, "manifested")
end

function manifested(NPC, Spawn)
  local Grummus = GetSpawn(NPC, 2520012)
  local most_hated = GetMostHated(Grummus)
  local arcane = GetSpawn(NPC, 2520039)
  local sendmsgtoall = GetGroup(most_hated)

  if IsAlive(NPC) and not IsAlive(arcane) then
    if GetTempVariable(Grummus, "poxule_dead_part_one") == nil then
      if not HasGroup(most_hated) then
        SendPopUpMessage(most_hated, "Traumatic poxule was up for too long and have manifested! The end of all that is...", 255, 0, 0)
        SendMessage(most_hated, "Traumatic poxule was up for too long and have manifested! The end of all that is...", "red")
      else
        for _, players in ipairs(sendmsgtoall) do
        SendPopUpMessage(players, "Traumatic poxule was up for too long and have manifested! The end of all that is...", 255, 0, 0)
        SendMessage(players, "Traumatic poxule was up for too long and have manifested! The end of all that is...", "red")
        end
      end

      if GetTempVariable(NPC, "manifested_spawned") == nil then
        SpawnManifested(NPC, Spawn)
      end
	end
  end
end

function SpawnManifested(Spawn)
  local arcane = GetSpawn(Spawn, 2520039)
  local zone = GetZone(Spawn)
  local Grummus = GetSpawn(Spawn, 2520012)
  local most_hated = GetMostHated(Grummus)

  SpawnMob(zone, 2520037, false, GetX(most_hated), GetY(most_hated), GetZ(most_hated), GetHeading(most_hated) - 90)

  local manifested = GetSpawn(Spawn, 2520037)

  AddHate(most_hated, manifested, 1)
  SetTempVariable(Spawn, "manifested_spawned", "true")
  SetTempVariable(Grummus, "poxule_dead_part_one", "true")
  SetTempVariable(Grummus, "poxule_dead_part_two", "true")
  SetTempVariable(Grummus, "poxule_dead_part_three", "true")
  Despawn(arcane)
  Despawn(Spawn)
end

function killed(NPC)
  local Grummus = GetSpawn(NPC, 2520012)
  CastSpell(Grummus, 209997759, 1, NPC) --Consume Soul
end