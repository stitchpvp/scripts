function cast(Caster, Target)
  AddControlEffect(Target, 4)
  Knockback(Caster, Target, -20, 10)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 4)
end