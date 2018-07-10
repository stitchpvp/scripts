function cast(Caster, Target)
  AddControlEffect(Target, 3)
  SetTarget(Target, 0xFFFFFFFF)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 3)
end