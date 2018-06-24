function cast(Caster, Target)
  SetSpellTriggerCount(5, 1)
  AddProc(Caster, 1, 100)
end

function proc(Caster, Target, MinDmg, MaxDmg)
  ProcDamage(Caster, Target, "Thunder Fist", 5, MinDmg, MaxDmg)
  RemoveTriggerFromSpell()
end

function remove(Caster, Target)
  RemoveProc(Caster)
end