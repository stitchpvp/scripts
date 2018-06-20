function cast(Caster, Target)
  SetSpellTriggerCount(100, 1)
  AddProc(Target, 3, 50)
end

function proc(Caster, Target, ProcType)
  local spell_caster = GetCaster()
  if HasSpellEffect(spell_caster, 217660483) then
    return
  else
    CastSpell(Caster, 217660483, 1, spell_caster)
    RemoveTriggerFromSpell()
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end