function cast(Caster, Target)
  local weapon = GetEquippedItemBySlot(Caster, 0)
  local proc_chance = GetProcPercentageForWeapon(weapon, 4.0)

  AddProc(Caster, 3, proc_chance)
end

function proc(Caster, Target, ProcType)
  CastSpell(Target, 101135794, 1, Caster)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
