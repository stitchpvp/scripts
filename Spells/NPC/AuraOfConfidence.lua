function cast(Caster, Target, Attribute, Potency, Haste, DPS)
  AddSpellBonus(Caster, 0, Attribute)
  AddSpellBonus(Caster, 4, Attribute)
  AddSpellBonus(Caster, 617, Potency)
  AddSpellBonus(Caster, 629, Haste)
  AddSpellBonus(Caster, 659, DPS)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
end
