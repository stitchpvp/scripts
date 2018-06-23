function cast(Caster, Target, HateTransfer, Amount)
  AddSpellBonus(Target, 817, Amount)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end