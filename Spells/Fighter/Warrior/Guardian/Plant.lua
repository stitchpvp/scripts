function cast(Caster, Target, MinHate)
  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  else
    AddHate(Caster, Target, MinHate, 1)
  end
  AddControlEffect(Target, 15)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 15)
end
