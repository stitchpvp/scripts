function hailed(NPC, Player)
  Say(NPC, "Hail. Do you have what it takes to aid me in the battle against Avatar of Disease's servant, Grummus?") --[[placeholder emote]]
  AddTimer(NPC, 5000, "second_sentence")
  AddTimer(NPC, 7000, "SpawnGrummus", 1, Player)
 end

function second_sentence(NPC)
  Say(NPC, "Very well, then. Get ready!") --[[placeholder emote]]
end

function SpawnGrummus(Spawn, Player)
  local zone = GetZone(Spawn)
  local Grummus = SpawnMob(zone, 2520012, false, 81.54, -8.64, 99.78, 90)
  AddHate(Player, Grummus, 1)
end