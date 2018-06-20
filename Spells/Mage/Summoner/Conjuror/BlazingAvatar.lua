function cast(Caster, Target)
  SetSpellTriggerCount(5, 1)
  AddProc(Target, 2, 100)
  AddProc(Target, 3, 100)
  AddProc(Target, 5, 100)
end

function proc(Caster, Target, ProcType, MinDmg, MaxDmg)
  if GetSpellTriggerCount() > 0 then
    local spell_caster = GetCaster()

    ProcDamage(spell_caster, Target, "Blaze", 3, MinDmg, MaxDmg)
    RemoveTriggerFromSpell()
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end
