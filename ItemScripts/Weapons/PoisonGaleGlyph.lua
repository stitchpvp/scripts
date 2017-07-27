function equipped(item, player)
  local proc_chance = GetProcPercentageForWeapon(item, 1.8)
  AddProc(player, 3, proc_chance, item)
end

function proc(item, caster, target, MinDmg, MaxDmg)
  ProcDamage(caster, target, "Poison Bolt", 9, MinDmg, MaxDmg, 0, "You hit %t with Poison Bolt")
end

function unequipped(item, player)
  RemoveProc(player, item)
end