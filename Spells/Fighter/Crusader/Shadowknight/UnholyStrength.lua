function cast(Caster, Target, StamAmt)
  AddSpellBonus(Target, 1, StamAmt)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end