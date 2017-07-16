function cast(Caster, Target, PowerAmt, NoxAmt)
  AddSpellBonus(Target, 501, PowerAmt)
  AddSpellBonus(Target, 202, NoxAmt)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
