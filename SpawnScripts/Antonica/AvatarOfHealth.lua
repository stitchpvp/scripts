function hailed(NPC, Player)
  Say(NPC, "You deem yourselves worthy to challenge the divine?")
  AddTimer(NPC, 5000, "second_sentence")
  AddTimer(NPC, 7000, "SpawnGrummus", 1, Player)
end

function second_sentence(NPC)
  Say(NPC, "You will soon learn the error of your ways!")
end

function battleweary(NPC, Spawn)
  Say(NPC, "I see you grow tired from my onslaught, it won't be long now before victory is mine!")
end

function SpawnGrummus(Spawn, Player)
  local zone = GetZone(Spawn)
  local Grummus = SpawnMob(zone, 2520012, false, 81.54, -8.64, 99.78, 90)
  AddHate(Grummus, Player, 1)
  AddTimer(Spawn, 390000, "battleweary")
end

function CombatReset(NPC)
  KillSpawn(NPC, GetSpawn(NPC, 2520012), 1)
end