function cast(Caster, Target, Amount)
  AddSpellBonus(Target, 2, Amount)
  AddSpellBonus(Target, 3, Amount)
end

function remove(Caster, Target, Amount)
  RemoveSpellBonus(Target)
end
