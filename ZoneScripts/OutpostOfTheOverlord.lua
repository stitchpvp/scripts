function init_zone_script(Zone)
  SetLocationProximityFunction(Zone, -17, -5, 211, 10, "GiveQuest")
end

function GiveQuest(Zone, Player)
  if not HasQuest(Player, 183) and not HasCompletedQuest(Player, 183) then
    OfferQuest(nil, Player, 183)
  end
end
