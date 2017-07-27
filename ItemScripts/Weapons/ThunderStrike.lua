function equipped(item, player)
  local proc_chance = GetProcPercentageForWeapon(item, 2.0)
  AddProc(player, 3, proc_chance, item)
end

function proc(item, caster, target, MinDmg, MaxDmg)
  ProcDamage(caster, target, "Magic Bolt", 5, MinDmg, MaxDmg, 0, "You hit %t with Magic Bolt")
end

function unequipped(item, player)
  RemoveProc(player, item)
end