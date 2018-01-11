function hailed(NPC, Player)
  Say(NPC, "<placeholder emote> Are you here to help me assist against Disease's servant, Grummus?")
  AddTimer(NPC, 5000, "second_sentence")
  AddTimer(NPC, 7000, "SpawnGrummus", 1, Player)
end

function second_sentence(NPC)
  Say(NPC, "<placeholder emote> I see. I hope you are well prepared.")
end

function SpawnGrummus(Spawn, Player)
  local zone = GetZone(Spawn)
  local Grummus = SpawnMob(zone, 2520012, false, 81.54, -8.64, 99.78, 90)
  AddHate(Player, Grummus, 1)
end