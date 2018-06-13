function cast(Caster, Target)
  local weapon = GetEquippedItemBySlot(Caster, 16)
  local proc_chance = GetProcPercentageForWeapon(weapon, 14.4)

  AddProc(Caster, 18, proc_chance)
end

function proc(Caster, Target, Type)
  CastSpell(Target, 240067515, 1, Caster)
end

function remove(Caster)
  RemoveProc(Caster)
end