function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 6, MinDmg, MaxDmg)

  Interrupt(Caster, Target)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 6, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  Interrupt(Caster, Target)
end
