function cast(Caster, Target, ThreatPriority, Threat)
  AddHate(Caster, Target, Threat)
  AddControlEffect(Target, 6)
  AddProc(Target, 2, 30)

  SetTarget(Target, 0xFFFFFFFF)
end

function proc(Caster, Target)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 6)
  RemoveProc(Target, 2)
end
