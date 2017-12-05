function cast(Caster, Target)
  AddControlEffect(Target, 2)
  SetTarget(Target, 0xFFFFFFFF)
  Interrupt(Caster, Target)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 2)
end
