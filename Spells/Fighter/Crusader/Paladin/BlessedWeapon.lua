function cast(Caster)
  local weapon = GetEquippedItemBySlot(Caster, 0)
  local proc_chance = GetProcPercentageForWeapon(weapon, 1.6)

  AddProc(Caster, 3, proc_chance)
end

function proc(Caster, Target, MinDmg, MaxDmg, MinUndeadDmg, MaxUndeadDmg)
  ProcDamage(Caster, Target, "Glorious Strike", 7, MinDmg, MaxDmg)
end

function remove(Caster)
  RemoveProc(Caster)
end