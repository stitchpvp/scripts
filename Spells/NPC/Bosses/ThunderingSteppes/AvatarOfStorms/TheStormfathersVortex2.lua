function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 4, MinDmg, MaxDmg)
  Interrupt(Caster, Target)
end
