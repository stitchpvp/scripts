function cast(Caster, Target)
  AddProc(Target, 3, 16.0)
end

function proc(Caster, Target, Type, DmgMin, DmgMax, HealMin, HealMax)
  ProcDamage(Caster, Target, "Unholy Strike", 8, DmgMin, DmgMax)
  ProcHeal(Caster, Caster, "Unholy Strike", "Heal", HealMin, HealMax)
end

function remove(Caster, Target)
  RemoveProc(Target)
end