function cast(caster, target)
  AddControlEffect(target, 4)
  Knockback(caster, target, 4000, -20, 10, 0)
end

function remove(caster, target)
  RemoveControlEffect(target, 4)
end
