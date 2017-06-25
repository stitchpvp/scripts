function cast(Caster, Target, MinHeal, MaxHeal, MinHot, MaxHot)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
end

function tick(Caster, Target, MinHeal, MaxHeal, MinHot, MaxHot)
  SpellHeal(Target, "Heal", MinHot, MaxHot)
end
