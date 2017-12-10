function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 7, MinDmg, MaxDmg)
  Interrupt(Caster, Target)
end