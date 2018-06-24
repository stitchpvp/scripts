function cast(Caster, Target, Str, Avoidance, Resistance)
  AddSpellBonus(Caster, 0, Str)
  AddSpellBonus(Caster, 696, Avoidance)
  AddSpellBonus(Caster, 201, Resistance)
  AddSpellBonus(Caster, 202, Resistance)
  AddSpellBonus(Caster, 203, Resistance)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
end