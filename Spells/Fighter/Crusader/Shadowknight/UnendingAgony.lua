function cast(Caster, Target, Dmg, TickDmg)
  SpellDamage(Target, 8, Dmg)
end

function tick(Caster, Target, Dmg, TickDmg)
  SpellDamage(Target, 8, TickDmg)
end
