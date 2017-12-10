function cast(Caster, Target)
  local weapon = GetEquippedItemBySlot(Caster, 0)
  local proc_chance = GetProcPercentageForWeapon(weapon, 1.6)

  AddProc(Caster, 1, proc_chance)
end

function proc(Caster, Target, MinDmg, MaxDmg)
  ProcDamage(Caster, Target, "Divine Strike", 7, MinDmg, MaxDmg)

  if GetRaceBaseType(Target) == 233 then
    ProcDamage(Caster, Target, "Divine Strike", 7, MinDmg, MaxDmg)
  end
end

function remove(Caster)
  RemoveProc(Caster)
end