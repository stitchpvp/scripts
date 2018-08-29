function equipped(Item, Player)
  local proc_chance = GetProcPercentageForWeapon(Item, 1.8)
  AddProc(Player, 3, proc_chance, Item)
end

function proc(Item, Caster, Target)
  ProcDamage(Caster, Target, "Poison Strike", 9, 125)
end

function unequipped(Item, Player)
  RemoveProc(Player, Item)
end
