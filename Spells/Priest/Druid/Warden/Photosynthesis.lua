function cast(Caster, Target, MinHeal, MaxHeal)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
end

function tick(Caster, Target, MinHeal, MaxHeal)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
end
