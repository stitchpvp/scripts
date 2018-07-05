function cast(Caster, Target, Chance)

  local roll = math.random(1, 100);
  if roll <= Chance then
	SendMessage(Caster, "Your feign death succeeded.", "yellow")
	SendMessage(Target, "Your feign death succeeded.", "yellow")
	AddControlEffect(Target, 16)
	ClearHate(Target)

	if IsPlayer(Target) then
	  SetTarget(Target, 0xFFFFFFFF)
	end
  else
    SendMessage(Caster, "Your feign death attempt failed.", "yellow")
    SendMessage(Target, "Your feign death attempt failed.", "yellow")
  end
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 16)
end