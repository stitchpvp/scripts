function used(Item, Spawn)
  local con = CreateConversation()
  AddConversationOption(con, "Release the mole rat.", "release")
  AddConversationOption(con, "Let him be for now.")
  StartDialogConversation(con, 2, Item, Spawn, "This cute little guy would be perfect as bait to lure down the cliffdiver hawks.")
end

function release(Item, Spawn)
  local zone = GetZone(Spawn)
  local molerat = SpawnMob(zone, 2780089, false, GetX(Spawn), GetY(Spawn), GetZ(Spawn), GetHeading(Spawn))
  AddTimer(Spawn, 2000, "hawk")
  AddTimer(Spawn, 10000, "despawn_rat")
  RemoveItem(Spawn, 8060)
end

function hawk(Item, Spawn)
  local chance = math.random(1, 100)
	if chance <= 50 then
    local zone = GetZone(Spawn)
    local spawn_hawk = SpawnMob(zone, 2780077, false, GetX(Spawn), GetY(Spawn) + 20, GetZ(Spawn), GetHeading(Spawn))
    AddHate(spawn_hawk, GetSpawn(Spawn, 2780089), 1)
  end
end

function despawn_rat(Item, Spawn)
  Despawn(GetSpawn(Spawn, 2780089))
end
