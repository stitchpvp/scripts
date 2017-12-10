function cast(Caster, Target, MinHate, MaxHate)
  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  else
    AddHate(Caster, Target, math.random(MinHate, MaxHate), 1)
  end
end

function tick(Caster, Target, MinHate, MaxHate, MinTickHate, MaxTickHate)
  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  else
    AddHate(Caster, Target, math.random(MinTickHate, MaxTickHate), 1)
  end
end