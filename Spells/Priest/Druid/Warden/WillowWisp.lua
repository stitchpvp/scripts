function cast(Caster, Target, ThreatPriority, Threat)
  AddHate(Caster, Target, Threat)
  AddControlEffect(Target, 5)
  Interrupt(Caster, Target)

  if IsPlayer(Target) then
    SetTarget(Target, 0xFFFFFFFF)
  end
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 5)
end
