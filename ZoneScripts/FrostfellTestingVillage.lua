function init_zone_script(Zone)
  SetLocationProximityFunction(Zone, 43, -5, -1185, 50, "AddProtection", "RemoveProtection")
end

function AddProtection(Zone, Player)
  local Spawn = GetSpawn(Player, 6870000)

  Say(Spawn, "Stay close, and I will protect you.", Player)
end

function RemoveProtection(Zone, Player)
  local Spawn = GetSpawn(Player, 6870000)

  Say(Spawn, "Be wary adventurer, I will no longer protect you.", Player)
end