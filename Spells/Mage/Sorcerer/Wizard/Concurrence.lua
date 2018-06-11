function cast(Caster, Target, PowerAmount)
  ProcHeal(Caster, Target, "Concurrence", "Power", PowerAmount)
  ProcHeal(Caster, Caster, "Concurrence", "Power", PowerAmount)
end