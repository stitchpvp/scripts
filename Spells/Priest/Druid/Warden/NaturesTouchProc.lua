function cast(Caster, Target, MinHeal, TickHeal, Wisdom)
  SpellHeal(Target, "Heal", MinHeal, MinHeal)
  AddSpellBonus(Target, 3, Wisdom)
end

function tick(Caster, Target, MinHeal, TickHeal)
  SpellHeal(Target, "Heal", TickHeal, TickHeal)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
