function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 8, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg, DoTMin, DoTMax)
  SpellDamage(Target, 8, DoTMin, DoTMax)
end
