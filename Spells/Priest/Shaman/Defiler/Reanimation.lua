function cast(Caster, Target, PowerTick, FlatAmount)
  local hp_perc = GetMaxHP(Target) * FlatAmount
  SpellHeal(Target, "Power", PowerTick, PowerTick, 2, 1)
  SpellHeal(Target, "Heal", hp_perc, hp_perc, 2, 1)
end

function tick(Caster, Target, PowerTick, Percentage)
  SpellHeal(Target, "Power", PowerTick, PowerTick, 2, 1)
end