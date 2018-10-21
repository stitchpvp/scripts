function cast(Caster, Target, HatePosition, HateAmount)
  AddControlEffect(Target, 1)
  AddProc(Target, 2, 100)

  if IsPlayer(Target) then
	SetTarget(Target, 0xFFFFFFFF)
  else
	AddHate(Caster, Target, HateAmount, 1)
  end
end

function proc(Caster, Target, ProcType, HatePosition, HateAmount)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 1)
  RemoveProc(Target)
end