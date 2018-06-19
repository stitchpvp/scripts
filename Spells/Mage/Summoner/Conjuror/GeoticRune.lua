function cast(Caster, Target, Physical, EleResist)
  AddSpellBonus(Target, 200, Physical)
  AddSpellBonus(Target, 201, EleResist)
  AddSpellBonus(Target, 202, EleResist)
  AddSpellBonus(Target, 203, EleResist)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end