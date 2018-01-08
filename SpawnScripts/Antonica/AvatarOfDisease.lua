function attacked(NPC)
  Say(NPC, "A plague of suffering will be your only reward!")
  AddTimer(NPC, 5000, "second_sentence")
  AddTimer(NPC, 45000, "SpawnAdds")
end

function second_sentence(NPC)
  Say(NPC, "I will wrap you in a protective cloak of virulent disease, just to be fair.")
end

function SpawnAdds(NPC)
  if IsInCombat(NPC) == false then
  return
end
	SpawnMob(GetZone(NPC), 2520014, false, 81.54, -8.64, 99.78, 90)
	SpawnMob(GetZone(NPC), 2520015, false, 81.54, -8.64, 99.78, 90)
	AddTimer(NPC, 45000, "SpawnAdds")
end

function death(NPC, Spawn)
  KillSpawn(NPC, GetSpawn(NPC, 2520014), 1)
  KillSpawn(NPC, GetSpawn(NPC, 2520015), 1)
end

function CombatReset(NPC)
  KillSpawn(NPC, GetSpawn(NPC, 2520014), 1)
  KillSpawn(NPC, GetSpawn(NPC, 2520015), 1)
end