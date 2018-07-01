function cast(caster, target)
  AddWard(target, 500, 0, 0, 0, true, true)
end

function remove(caster, target)
  RemoveWard(target)
end
