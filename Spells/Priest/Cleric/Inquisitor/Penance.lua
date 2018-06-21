function cast(Caster, Target)
  SetSpellTriggerCount(5, 1)
  AddProc(Target, 2, 100)
end

function proc(Caster, Target, ProcType, MinHeal, MaxHeal)
  if GetSpellTriggerCount() > 0 then
    local spell_caster = GetCaster()
  
    RemoveTriggerFromSpell()

    ProcHeal(spell_caster, Caster, "Vengeful Faith", "Heal", MinHeal, MaxHeal)
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end