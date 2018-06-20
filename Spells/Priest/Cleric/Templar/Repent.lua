function cast(Caster, Target, WardAmt)
  AddWard(Target, WardAmt, 1, 0)
end

function remove(Caster, Target)
  local heal = GetWardAmountLeft()
  
  RemoveWard(Target)
  if heal > 0 then
    SpellHeal(Target, "Heal", heal)
  end
end