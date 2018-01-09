function hailed(NPC)
  Say(NPC, "You deem yourselves worthy to challenge the divine?")

  AddTimer(NPC, 5000, "second_sentence")
  AddTimer(NPC, 7000, "SpawnGrummus")
end

function second_sentence(NPC)
  Say(NPC, "You will soon learn the error of your ways!")
end

function SpawnGrummus(Zone, Spawn)
  local Grummus = SpawnMob(Zone, 2520012, false, 81.54, -8.64, 99.78, 90)
  AddHate(Spawn, Grummus, 100)
end

function CombatReset(NPC)
  KillSpawn(NPC, GetSpawn(NPC, 2520012), 1)
end