function cast(Caster, Target, MinDmg, MaxDmg, HealMin, HealMax)
  SpellDamage(Target, 8, MinDmg, MaxDmg)
  SpellHeal(Caster, "Heal", HealMin, HealMax)
end
