function cast(Caster, Target, Dehate)
  AddHate(Caster, Target, Dehate)
  CastSpell(Caster, 2903996, 1)
  BlurVision(Target, 20.0)
  Interrupt(Caster, Target)

  if IsPlayer(Target) then
	SetTarget(Target, 0xFFFFFFFF)
  end
end

function remove(Caster, Target)
  BlurVision(Target, 0.0)
end