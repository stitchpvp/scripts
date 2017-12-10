function cast(Caster, Target, MinDmg, MaxDmg, MinHealPct, MaxHealPct)
  local min_heal = GetMaxHP(Caster) * (MinHealPct / 100.0)
  local max_heal = GetMaxHP(Caster) * (MaxHealPct / 100.0)

  SpellDamage(Target, 7, MinDmg, MaxDmg)
  SpellHeal(Caster, "Heal", min_heal, max_heal)
end