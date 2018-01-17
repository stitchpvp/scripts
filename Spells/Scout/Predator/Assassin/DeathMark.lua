function cast(Caster, Target)
  SetSpellTriggerCount(1, 1)

  AddProc(Target, 16, 5)
end

function proc(Caster, Target, Type, SpellID)
  CastSpell(Caster, SpellID, 1, Target)

  RemoveTriggerFromSpell()
end

function remove(Caster, Target)
  RemoveProc(Target)
end