function cast(Caster, Target, MinDmg, MaxDmg, Heal)
  SpellDamage(Target, 8, MinDmg, MaxDmg)
  SpellHeal(Caster, "Heal", Heal)
end