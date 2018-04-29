function cast(Caster, Target)
  local weapon = GetEquippedItemBySlot(Caster, 0)
  local proc_chance = GetProcPercentageForWeapon(weapon, 1.6)

  AddProc(Target, 3, proc_chance)
end

function proc(Caster, Target, Type, MinDmg, MaxDmg, SpellID)
  CastSpell(Target, SpellID, 1, Caster)
end

function remove(Caster, Target)
  RemoveProc(Target)
end
