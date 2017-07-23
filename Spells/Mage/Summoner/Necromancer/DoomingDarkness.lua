function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 8, MinDmg, MaxDmg)
  Interrupt(Caster, Target)
end

function tick(Caster, Target, Dmg)
  SpellDamage(Target, 8, MinDmg, MaxDmg)
end
