function cast(Caster, Target)
  SetSpellTriggerCount(1, 1)
  AddProc(Caster, 1, 100)
end

function proc(Caster, Target, ProcType)
  CastSpell(Target, 110781842, 1, Caster)
  RemoveTriggerFromSpell()
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
