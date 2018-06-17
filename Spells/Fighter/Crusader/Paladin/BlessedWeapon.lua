function cast(Caster)
  local weapon = GetEquippedItemBySlot(Caster, 0)
  local proc_chance = GetProcPercentageForWeapon(weapon, 1.6)

  AddProc(Caster, 3, proc_chance)
end

function proc(Caster, Target, Type)
  CastSpell(Target, 220735735, 1, Caster)
end

function remove(Caster)
  RemoveProc(Caster)
end