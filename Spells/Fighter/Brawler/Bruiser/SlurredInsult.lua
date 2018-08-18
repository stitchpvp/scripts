function cast(Caster, Target, MinHate, MaxHate)
  AddControlEffect(Target, 15)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  else
    AddHate(Caster, Target, math.random(MinHate, MaxHate))
  end
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 15)
end