function cast(Caster, Target, MaxHP, Mitigation)
  AddSpellBonus(Target, 607, MaxHP)
  AddSpellBonus(Target, 200, Mitigation)
  AddSpellBonus(Target, 201, Mitigation)
  AddSpellBonus(Target, 202, Mitigation)
  AddSpellBonus(Target, 203, Mitigation)
  SetSpellTriggerCount(50, 1)
  AddProc(Target, 2, 100)
end

function proc(Caster, Target, ProcType, MaxHP, Mitigation, MinDmg)
  if GetSpellTriggerCount() > 0 then
    local spell_caster = GetCaster()
    RemoveTriggerFromSpell()
    ProcDamage(spell_caster, Target, "Porcupine Quills", 7, MinDmg, MinDmg)
  end
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  RemoveProc(Target)
end
