function cast(Caster, Target, ThreatPriority, Threat, SlowAmt)
  AddHate(Caster, Target, Threat)
  AddControlEffect(Target, 2)
  Interrupt(Caster, Target)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 2)
end
