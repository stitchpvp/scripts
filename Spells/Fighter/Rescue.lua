function cast(Caster, Target, ThreatPriority, ThreatAmount)
  AddHate(Caster, Target, ThreatAmount)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  end
end