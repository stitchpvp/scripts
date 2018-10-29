function cast(Caster, Target, Haste, DPS, Attributes, Accuracy, Potency, Mitigation, CastingSpeed)
  AddSpellBonus(Target, 0, Attributes)
  AddSpellBonus(Target, 1, Attributes)
  AddSpellBonus(Target, 2, Attributes)
  AddSpellBonus(Target, 3, Attributes)
  AddSpellBonus(Target, 4, Attributes)
  AddSpellBonus(Target, 617, Haste)
  AddSpellBonus(Target, 629, DPS)
  AddSpellBonus(Target, 664, CastingSpeed)
  AddSpellBonus(Target, 659, Potency)
  AddSpellBonus(Target, 682, Accuracy)
  AddSpellBonus(Target, 200, Mitigation)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
