function cast(Caster, Target)
  SetSpellTriggerCount(1, 1)
  AddProc(Caster, 13, 100)
end

function proc(Caster, Target, ProcType)
  if GetSpellTriggerCount() > 0 then

    RemoveTriggerFromSpell()

    CastSpell(Caster, 109830958, 1)
  end
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
