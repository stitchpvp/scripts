function cast(Caster, Target, MinDmg, MaxDmg)
  Interrupt(Caster, Target)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
end
