function cast(Caster, Target, Threat)
  AddControlEffect(Target, 6)
  AddProc(Target, 2, 30)

  if IsPlayer(Target) then
	SetTarget(Target, 0xFFFFFFFF)
  else
	AddHate(Caster, Target, Threat, 1)
  end
end

function proc(Caster, Target, ProcType, Threat)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 6)
  RemoveProc(Target)
end