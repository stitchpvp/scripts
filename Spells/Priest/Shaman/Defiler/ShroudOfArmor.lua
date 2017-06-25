function cast(Caster, Target, WardAmt, MitAmt)
  if GetArchetypeName(Target) ~= "Fighter" then
    AddSpellBonus(Target, 204, MitAmt)
  end
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
