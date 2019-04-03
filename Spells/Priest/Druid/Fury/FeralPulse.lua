function cast(Caster, Target, InstantHeal, TickHeal)
  SpellHeal(Target, "Heal", InstantHeal, InstantHeal)
end

function tick(Caster, Target, InstantHeal, TickHeal)
  SpellHeal(Target, "Heal", TickHeal, TickHeal)
end
