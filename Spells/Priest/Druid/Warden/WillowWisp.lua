function cast(Caster, Target, ThreatPriority, Threat)
  AddControlEffect(Target, 5)
  Interrupt(Caster, Target)

  if IsPlayer(Target) then
	SetTarget(Target, 0xFFFFFFFF)
  else
	AddHate(Caster, Target, Threat, 1)
  end
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 5)
end