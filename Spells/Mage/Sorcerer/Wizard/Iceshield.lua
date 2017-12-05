function cast(Caster, Target)
  SetSpellTriggerCount(3, 1)
  AddProc(Target, 4, 100)
end

function proc(Caster, Target, ProcType, MinDmg, MaxDmg)
  ProcDamage(Caster, Target, "Frost Spikes", 4, MinDmg, MaxDmg)
  RemoveTriggerFromSpell()
end

function remove(Caster, Target)
  RemoveProc(Target)
end
