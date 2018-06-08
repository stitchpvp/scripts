function cast(Caster, Target, MinDmg, MaxDmg, MinHeal, MaxHeal)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
end

function tick(Caster, Target, MinDmg, MaxDmg, MinHeal, MaxHeal)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
end
