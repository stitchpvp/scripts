function spawn(NPC, Spawn)
  AddTimer(NPC, 2000, "hawk")
  AddTimer(NPC, 10000, "despawn_rat")
  SetBrainTick(NPC, 600000)
	SetLuaBrain(NPC)
end

function Think(NPC)
	return
end

function hawk(NPC, Spawn)
  local chance = math.random(1, 100)
	if chance <= 50 then
    local zone = GetZone(NPC)
    local spawn_hawk = SpawnMob(zone, 2780077, false, GetX(NPC), GetY(NPC) + 20, GetZ(NPC), GetHeading(NPC))
    AddHate(spawn_hawk, NPC, 1)
  end
end

function despawn_rat(NPC)
  Despawn(NPC)
end
