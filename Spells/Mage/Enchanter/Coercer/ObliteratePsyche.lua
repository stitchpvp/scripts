function cast(Caster, Target, Debuff)
  AddSpellBonus(Target, 201, Debuff)
  AddSpellBonus(Target, 202, Debuff)
  AddSpellBonus(Target, 203, Debuff)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end