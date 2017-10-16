function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 8, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg, DoTMin, DoTMax, HealMin, HealMax)
  SpellDamage(Target, 8, DoTMin, DoTMax)
  SpellHeal(Caster, "Heal", HealMin, HealMax)
end