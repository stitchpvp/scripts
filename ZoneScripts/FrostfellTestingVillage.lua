function init_zone_script(Zone)
  SetLocationProximityFunction(Zone, 43, -5, -1185, 50, "AddProtection", "RemoveProtection")
end

function AddProtection(Zone, Player)
  local Spawn = GetSpawn(Player, 6870000)
  CastSpell(Player, 1001595, 1, Spawn)
  SetInCombat(Spawn, false)
end

function RemoveProtection(Zone, Player)
  local Spawn = GetSpawn(Player, 6870000)
  RemoveSpell(Player, 1001595, Spawn)
end
