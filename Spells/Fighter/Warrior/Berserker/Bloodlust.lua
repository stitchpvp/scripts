function cast(Caster, Target, BuffAmt)
  AddSpellBonus(Target, 0, BuffAmt)
  AddSpellBonus(Target, 2, BuffAmt)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end