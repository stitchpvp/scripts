function cast(Caster, Target, MinDmg, MaxDmg, MinHate, MaxHate)
  local weapon = GetEquippedItemBySlot(Caster, 0)
  local proc_chance = GetProcPercentageForWeapon(weapon, 5.0)

  AddProc(Caster, 1, proc_chance)
end

function proc(Caster, Target, ProcType, MinDmg, MaxDmg, MinHate, MaxHate)
  local DamageType = GetWeaponDamageType(Caster)
  
  ProcDamage(Caster, Target, "Roughhousing", DamageType, MinDmg, MaxDmg)
  AddHate(Caster, Target, math.random(MinHate, MaxHate), 1)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end