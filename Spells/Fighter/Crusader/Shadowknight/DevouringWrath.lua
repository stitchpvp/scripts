function cast(Caster, Target, MinDmg, MaxDmg, MinHeal, MaxHeal)
  ProcDamage(Caster, Target, "Plague Cloud", 8, MinDmg, MaxDmg)
  ProcHeal(Caster, Caster, "Plague Cloud", "Heal", MinHeal, MaxHeal)
end