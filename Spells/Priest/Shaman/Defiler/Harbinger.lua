function cast(Caster, Target, StaAmt, PowerAmt)
  AddSpellBonus(Target, 1, StaAmt)
  AddSpellBonus(Target, 501, PowerAmt)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
