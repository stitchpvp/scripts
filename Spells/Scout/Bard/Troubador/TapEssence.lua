function cast(Caster, Target, MinDmg, MaxDmg, MinPower, MaxPower)
  SpellDamage(Target, 6, MinDmg, MaxDmg)
  ProcHeal(Caster, Caster, "Tap Essence", "Power", MinPower, MaxPower)
end