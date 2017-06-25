function cast(Caster, Target, Amount)
  AddSpellBonus(Caster, 613, Amount)
  AddSpellBonus(Caster, 624, Amount)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
end