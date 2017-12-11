function cast(Caster, Target)
  SetSpellTriggerCount(9, 1)
  AddProc(Target, 2, 100)
end

function proc(Caster, Target, ProcType, MinHeal, MaxHeal)
  local spell_caster = GetCaster()

  ProcHeal(spell_caster, Target, "Divine Prayer", "Heal", MinHeal, MaxHeal)
  RemoveTriggerFromSpell()
end

function remove(Caster, Target)
  RemoveProc(Target)
end
