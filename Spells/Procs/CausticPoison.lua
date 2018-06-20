function cast(Caster, Target)
  SetSpellTriggerCount(100, 1)
  AddProc(Target, 3, 50)
end

function proc(Caster, Target, ProcType, MinDmg, MaxDmg)
  local spell_caster = GetCaster()
  ProcDamage(spell_caster, Target, "Caustic Poison", 9, MinDmg, MaxDmg)
  RemoveTriggerFromSpell()
end

function remove(Caster, Target)
  RemoveProc(Target)
end