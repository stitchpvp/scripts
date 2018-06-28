function cast(Caster, Target, MinVal, MaxVal)
  AddHate(Caster, Target, MinVal, MaxVal, 1)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  end
end