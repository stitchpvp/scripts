function cast(Caster, Target)
  AddControlEffect(Target, 4)
  Knockback(Caster, Target, 2500, -20, 10, 0)
  BlurVision(Target, 1.0)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 4)
  BlurVision(Target, 0.0)
end