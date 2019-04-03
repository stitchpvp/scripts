function cast(Caster, Target, MinHeal, MaxHeal, Attribute, STA, Avoidance, Mitigation, PowerReduction)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
  AddSpellBonus(Target, 0, Attribute)
  AddSpellBonus(Target, 2, Attribute)
  AddSpellBonus(Target, 3, Attribute)
  AddSpellBonus(Target, 4, Attribute)
  AddSpellBonus(Target, 1, STA)
  AddSpellBonus(Target, 696, Avoidance)
  AddSpellBonus(Target, 201, Mitigation)
  AddSpellBonus(Target, 202, Mitigation)
  AddSpellBonus(Target, 203, Mitigation)
  AddSpellBonus(Target, 818, PowerReduction)
end

function tick(Caster, Target, MinHeal, MaxHeal)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
