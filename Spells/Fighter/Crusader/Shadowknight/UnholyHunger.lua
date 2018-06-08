function cast(Caster, Target)
  local weapon = GetEquippedItemBySlot(Caster, 0)
  local proc_chance = GetProcPercentageForWeapon(weapon, 1.6)

  AddProc(Caster, 3, proc_chance)
end

function proc(Caster, Target, Type, MinDmg, MaxDmg, MinHeal, MaxHeal)
  ProcDamage(Caster, Target, "Unholy Strike", 8, MinDmg, MaxDmg)
  ProcHeal(Caster, Caster, "Unholy Strike", "Heal", MinHeal, MaxHeal)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
