function cast(Caster, Target)
  AddControlEffect(Caster, 4)
  Knockback(Caster, Caster, -20, 10)
end

function remove(Caster, Target)
  RemoveControlEffect(Caster, 4)
end