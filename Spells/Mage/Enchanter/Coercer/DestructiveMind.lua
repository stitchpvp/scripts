function cast(Caster, Target)
  SetSpellTriggerCount(3, 1)
  AddProc(Target, 1, 100)
end

function proc(Caster, Target, ProcType, MinDmg, MaxDmg)
  if GetSpellTriggerCount() > 0 then

	RemoveTriggerFromSpell()

	ProcDamage(Target, Caster, "Despotic Mind", 6, MinDmg, MaxDmg)
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end