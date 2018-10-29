function cast(Caster, Target, Attributes, Haste, DPS, CastingSpeed, Mitigation, SnareAmount)
  AddSpellBonus(Target, 0, Attributes)
  AddSpellBonus(Target, 1, Attributes)
  AddSpellBonus(Target, 2, Attributes)
  AddSpellBonus(Target, 3, Attributes)
  AddSpellBonus(Target, 4, Attributes)
  AddSpellBonus(Target, 617, Haste)
  AddSpellBonus(Target, 629, DPS)
  AddSpellBonus(Target, 664, CastingSpeed)
  AddSpellBonus(Target, 200, Mitigation)
  AddControlEffect(Target, 11)
  SetSpellSnareValue(SnareAmount, Target)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 11)
  RemoveSpellBonus(Target)
end
