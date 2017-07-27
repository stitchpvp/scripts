function equipped(item, player)
  local proc_chance = GetProcPercentageForWeapon(item, 2.4)
  AddProc(player, 3, proc_chance, item)
end

function proc(item, caster, target, MinDmg, MaxDmg)
  ProcDamage(caster, target, "Ancient Venom", 9, MinDmg, MaxDmg, 0, "You hit %t with Ancient Venom")
end

function unequipped(item, player)
  RemoveProc(player, item)
end