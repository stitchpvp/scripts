function cast(Caster, Target)
  BreatheUnderwater(Target, true)
  AddControlEffect(Target, 7)
  AddControlEffect(Target, 8)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 7)
  RemoveControlEffect(Target, 8)
  BreatheUnderwater(Target, false)
end
