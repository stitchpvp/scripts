function cast(Caster, Target, Amount)
  AddSpellBonus(Target, 500, Amount)
  AddSpellBonus(Target, 501, Amount)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
