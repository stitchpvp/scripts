function cast(Caster, Target, BuffAmt)
  AddSpellBonus(Target, 200, BuffAmt)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end