function cast(Caster, Target, MinVal, MaxVal)
  AddHate(Caster, Target, MinVal, MaxVal, 1)

  Interrupt(Target)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  end
end
