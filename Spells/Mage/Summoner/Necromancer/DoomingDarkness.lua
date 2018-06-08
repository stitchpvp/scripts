function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 8, MinDmg, MaxDmg)
  Interrupt(Caster, Target)
  CastSpell(Target, 112338607, 1, Caster)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 8, MinDmg, MaxDmg)
end
