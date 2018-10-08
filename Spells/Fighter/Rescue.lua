function cast(Caster, Target, ThreatPriority, ThreatAmount)
  AddControlEffect(Target, 15)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  else
    AddHate(Caster, Target, ThreatAmount, 1)
  end
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 15)
end