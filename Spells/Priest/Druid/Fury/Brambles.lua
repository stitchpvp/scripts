function cast(Caster, Target, Threat, SlowAmt)
  AddControlEffect(Target, 2)
  SetSpellSnareValue(SlowAmt, Target)
  AddControlEffect(Target, 11)
  AddProc(Target, 2, 10)

  if IsPlayer(Target) then
	SetTarget(Target, 0xFFFFFFFF)
  else
	AddHate(Caster, Target, Threat, 1)
  end
end

function proc(Caster, Target)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 2)
  RemoveControlEffect(Target, 11)
  RemoveProc(Target)
end