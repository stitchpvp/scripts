function cast(Caster, Target, WardAmt)
  AddWard(Target, WardAmt, 0, 0)
end

function remove(Caster, Target)
  RemoveWard(Target)
end
