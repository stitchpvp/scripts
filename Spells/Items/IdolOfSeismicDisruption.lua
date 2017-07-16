function cast(caster, target)
  AddControlEffect(target, 5)
  Knockback(caster, target, 4000, -30, 25, 0)
end

function remove(caster, target)
  RemoveControlEffect(target)
end