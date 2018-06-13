function cast(Caster, Target, MinHeal, MaxHeal, MaxHealth)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
  AddSpellBonus(Target, 500, MaxHealth)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end