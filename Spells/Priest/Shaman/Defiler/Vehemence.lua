function cast(Caster, Target, StaAmt, StrAmt)
  AddSpellBonus(Target, 0, StrAmt)
  AddSpellBonus(Target, 1, StaAmt)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
