function cast(Caster, Target, MinDmg, MaxDmg, SnareAmount)
  ProcDamage(Caster, Target, "Frigid Punch", 4, MinDmg, MaxDmg)
  SetSpellSnareValue(SnareAmount, Target)
  AddControlEffect(Target, 11)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 11)
end