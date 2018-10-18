function cast(Caster, Target, Percentage)
  local hp_perc = GetMaxHP(Target) * Percentage
  SpellHeal(Target, "Heal", hp_perc, hp_perc, 2, 1)
end