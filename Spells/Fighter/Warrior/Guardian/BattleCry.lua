function cast(Caster, Target, Amount)
  AddSpellBonus(Target, 204, Amount)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end