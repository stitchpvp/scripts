function cast(Caster, Target, WardAmt)
  AddWard(Target, WardAmt, 1)
end

function remove(Caster, Target)
  RemoveWard(Target)
end