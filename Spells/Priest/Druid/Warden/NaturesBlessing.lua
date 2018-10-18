function cast(Caster, Target, HealTick)
  local hp_perc = GetMaxHP(Target) * HealTick
  SpellHeal(Target, "Heal", hp_perc, hp_perc, 2, 1)
end

function tick(Caster, Target, HealTick)
  local hp_perc = GetMaxHP(Target) * HealTick
  SpellHeal(Target, "Heal", hp_perc, hp_perc, 2, 1)
end