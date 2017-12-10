function cast(Caster, Target, MinHealPct, MaxHealPct, Health)
  local min_heal = GetMaxHP(Caster) * (MinHealPct / 100.0)
  local max_heal = GetMaxHP(Caster) * (MaxHealPct / 100.0)

  AddSpellBonus(Target, 500, Health)
  SpellHeal(Target, "Heal", min_heal, max_heal)
end