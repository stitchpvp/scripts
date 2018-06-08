function cast(Caster, Target, MinDmg, MaxDmg, PowerAmount)
  SpellDamage(Target, 6, MinDmg, MaxDmg)
  SpellHeal(Caster, "Power", PowerAmount, PowerAmount)
end

function tick(Caster, Target, MinDmg, MaxDmg, PowerAmount)
  SpellDamage(Target, 6, MinDmg, MaxDmg)
  SpellHeal(Caster, "Power", PowerAmount, PowerAmount)
end
