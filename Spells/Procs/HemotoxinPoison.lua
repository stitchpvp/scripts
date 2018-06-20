function cast(Caster, Target)
  SetSpellTriggerCount(100, 1)
  AddProc(Target, 3, 50)
end

function proc(Caster, Target, ProcType)
  local spell_caster = GetCaster()
  CastSpell(Caster, 217660483, 1, spell_caster)
  RemoveTriggerFromSpell()
end

function remove(Caster, Target)
  RemoveProc(Target)
end