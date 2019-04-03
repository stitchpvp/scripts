function cast(Caster, Target, MinHeal, MaxHeal, MinPower, MaxPower)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
  SpellHeal(Target, "Power", MinPower, MaxPower)
end

function tick(Caster, Target, MinHeal, MaxHeal, MinPower, MaxPower)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
  SpellHeal(Target, "Power", MinPower, MaxPower)
end
