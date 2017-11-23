function cast(Caster, Target, PowerAmount)
  SpellHeal(Target, "Power", PowerAmount, PowerAmount)
end

function tick(Caster, Target, PowerAmount)
  SpellHeal(Target, "Power", PowerAmount, PowerAmount)
end