function cast(Caster, Target)
  AddControlEffect(Target, 4)
  BlurVision(Target, 1.0)
  Knockback(Caster, Target, 2500, -20, 10, 0)
end

function remove(Caster, Target)
  BlurVision(Target, 0.0)
  RemoveControlEffect(Target, 4)
end
