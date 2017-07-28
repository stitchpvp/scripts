function cast(caster, target)
  AddControlEffect(target, 4)
  Knockback(caster, target, 2500, -20, 10, 0)
  BlurVision(Target, 1.0)
end

function remove(caster, target)
  RemoveControlEffect(target, 4)
  BlurVision(Target, 0.0)
end