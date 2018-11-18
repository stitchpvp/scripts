function cast(Caster, Target, WardAmt, MitAmt)
  AddWard(Target, WardAmt, 1, 2)

  if GetArchetypeName(Target) ~= "Fighter" then
    AddSpellBonus(Target, 204, MitAmt)
  end
end

function tick(Caster, Target, WardAmt)
  AddToWard(Target, WardAmt)
end

function remove(Caster, Target)
  RemoveWard(Target)
end
