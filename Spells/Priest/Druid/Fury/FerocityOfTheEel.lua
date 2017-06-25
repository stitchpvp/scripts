function cast(Caster, Target)
  BreatheUnderwater(Caster, 1)
  SetVision(Caster, 4)
end

function remove(Caster, Target)
  BreatheUnderwater(Caster, 0)
  SetVision(Caster, 0)
end
