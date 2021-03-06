function cast(Caster, Target, MinHate, MaxHate)
  Interrupt(Caster, Target)
  AddControlEffect(Target, 15)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  else
    AddHate(Caster, Target, math.random(MinHate, MaxHate), 1)
  end
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 15)
end