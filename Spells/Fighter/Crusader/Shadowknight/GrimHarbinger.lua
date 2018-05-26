function cast(Caster, Target)
  local weapon = GetEquippedItemBySlot(Caster, 0)
  local proc_chance = GetProcPercentageForWeapon(weapon, 3.0)

  AddProc(Caster, 3, proc_chance)
end

function proc(Caster, Target, Type, MinDmg, MaxDmg, MinHeal, MaxHeal)
  ProcDamage(Caster, Target, "Grim Strike", 8, MinDmg, MaxDmg)
  ProcHeal(Caster, Caster, "Grim Strike", "Heal", MinHeal, MaxHeal)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
