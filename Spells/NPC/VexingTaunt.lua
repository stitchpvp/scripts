function cast(Caster, Target)
  if IsPlayer(Target) then
    SetTarget(Target, Caster)
    AddControlEffect(Target, 15)
  end
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 15)
end
