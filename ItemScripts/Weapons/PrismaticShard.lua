function equipped(item, player)
  local proc_chance = GetProcPercentageForWeapon(item, 1.4)
  AddProc(player, 3, proc_chance, item)
end

function proc(item, caster, target, MinDmg, MaxDmg)
  ProcDamage(caster, target, "Prismatic Shard", 5, MinDmg, MaxDmg, 0, "You hit %t with Prismatic Shard")
end

function unequipped(item, player)
  RemoveProc(player, item)
end