function cast(Caster, Target, WardAmt, Debuff, MaxHealth, Resists)
  if HasSpellEffect(Target, 62142793) then
    return
  else
    AddWard(Target, WardAmt, 1, 1)
    AddSpellBonus(Target, 617, Debuff)
    AddSpellBonus(Target, 500, MaxHealth)
    AddSpellBonus(Target, 201, Resists)
    AddSpellBonus(Target, 202, Resists)
    AddSpellBonus(Target, 203, Resists)
  end
end

function tick(Caster, Target, WardAmt)
  AddToWard(Target, WardAmt)
end

function remove(Caster, Target)
  RemoveWard(Target)
  RemoveSpellBonus(Target)
end