function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 1, MinDmg, MaxDmg)
  Interrupt(Caster, Target)
end