function cast(Caster, Target)
  SetSpellTriggerCount(3, 1)
  AddProc(Caster, 3, 100)
end

function proc(Caster, Target, ProcType, MinDmg, MaxDmg)
  local spell_caster = GetCaster()
  ProcDamage(spell_caster, Caster, "Convulsions", 6, MinDmg, MaxDmg)
  RemoveTriggerFromSpell()
end

function remove(Caster, Target)
  RemoveProc(Caster)
end