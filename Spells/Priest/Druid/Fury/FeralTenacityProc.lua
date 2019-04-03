function cast(Caster, Target, InstantHeal, TickHeal, AGI)
  SpellHeal(Target, "Heal", InstantHeal, InstantHeal)
  AddSpellBonus(Target, 2, AGI)
end

function tick(Caster, Target, InstantHeal, TickHeal)
  SpellHeal(Target, "Heal", TickHeal, TickHeal)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
