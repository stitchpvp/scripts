function cast(Caster, Target, WardAmt, Mitigation)
  AddWard(Target, WardAmt, 2, 3)
  AddWard(Target, WardAmt, 2, 4)
  AddSpellBonus(Target, 201, Mitigation)
end

function remove(Caster, Target)
  RemoveWard(Target)
  RemoveSpellBonus(Target)
end
