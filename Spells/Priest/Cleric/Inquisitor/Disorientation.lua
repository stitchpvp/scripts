function cast(Caster, Target, HateAmount)
  AddControlEffect(Target, 4)

  if IsPlayer(Target) then
	SetTarget(Target, 0xFFFFFFFF)
  else
	AddHate(Caster, Target, HateAmount, 1)
  end
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 4)
end