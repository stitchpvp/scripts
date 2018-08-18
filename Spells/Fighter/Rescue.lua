function cast(Caster, Target, ThreatPriority, ThreatAmount)
  AddHate(Caster, Target, ThreatAmount)
  AddControlEffect(Target, 15)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  end
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 15)
end