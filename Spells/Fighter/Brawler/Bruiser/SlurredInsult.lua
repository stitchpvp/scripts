function cast(Caster, Target, MinHate, MaxHate)
  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  else
    AddHate(Caster, Target, math.random(MinHate, MaxHate))
  end
end