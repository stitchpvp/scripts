function cast(Caster, Target, PowerPct, MinHeal, MaxHeal)
  local PowerAmount = GetMaxPower(Target) * (PowerPct / 100.0)

  SpellHeal(Target, "Power", PowerAmount)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
end

function tick(Caster, Target, PowerPct, MinHeal, MaxHeal)
  local PowerAmount = GetMaxPower(Target) * (PowerPct / 100.0)

  SpellHeal(Target, "Power", PowerAmount)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
end