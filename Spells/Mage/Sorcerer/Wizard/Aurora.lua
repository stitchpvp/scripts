function cast(Caster, Target)
  AddControlEffect(Target, 1, 1)
  AddControlEffect(Caster, 5, 1)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 1, 1)
  RemoveControlEffect(Caster, 5, 1)
end
