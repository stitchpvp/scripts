function cast(caster, target)
  AddControlEffect(target, 5)
  Knockback(caster, target, 4000, -20, 10, 0)
end

function remove(caster, target)
  RemoveControlEffect(target, 5)
end