function cast(Caster, Target, MinPercentage, MaxPercentage, Health)
  local random = math.random(MinPercentage, MaxPercentage)
  local caster_hp_perc = GetMaxHP(Caster) * random
  local target_hp_perc = GetMaxHP(Target) * Health
  SpellHeal(Target, "Heal", caster_hp_perc, caster_hp_perc, 2, 1)
  SpellHeal(Target, "Heal", target_hp_perc, target_hp_perc, 2, 1)
end