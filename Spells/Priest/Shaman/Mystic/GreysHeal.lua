function cast(Caster, Target, CasterMaxHealth, Health)
  local caster_hp_perc = GetMaxHP(Caster) * CasterMaxHealth
  local target_hp_perc = GetMaxHP(Target) * Health
  SpellHeal(Target, "Heal", caster_hp_perc, caster_hp_perc, 2, 1)
  SpellHeal(Target, "Heal", target_hp_perc, target_hp_perc, 2, 1)
end