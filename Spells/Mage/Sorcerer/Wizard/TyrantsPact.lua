function cast(Caster, Target, Amount)
  AddSpellBonus(Target, 0, Amount)
  AddSpellBonus(Target, 4, Amount)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
