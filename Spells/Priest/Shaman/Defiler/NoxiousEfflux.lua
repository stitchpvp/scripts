function cast(Caster, Target, StaAmt, NoxAmt)
  AddSpellBonus(Target, 1, StaAmt)
  AddSpellBonus(Target, 202, NoxAmt)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
