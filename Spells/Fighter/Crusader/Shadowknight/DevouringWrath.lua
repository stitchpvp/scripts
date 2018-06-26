function cast(Caster, Target, MinDmg, MaxDmg, MinHeal, MaxHeal)
  ProcDamage(Caster, Target, "Devouring Wrath", 8, MinDmg, MaxDmg)
  ProcHeal(Caster, Caster, "Devouring Wrath", "Heal", MinHeal, MaxHeal)
end