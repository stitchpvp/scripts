function cast(Caster, Target, Chance)
  AddControlEffect(Target, 16)

  local roll = math.random(1, 100);
  if roll <= Chance then
	SendMessage(Caster, "Your feign death succeeded.", "yellow")
	SendMessage(Target, "Your feign death succeeded.", "yellow")
	ClearHate(Target)

	local player_target = GetTarget(Target)
	if IsPlayer(player_target) then
	  SetTarget(player_target, 0xFFFFFFFF)
	end
  else
    SendMessage(Caster, "Your feign death attempt failed.", "yellow")
    SendMessage(Target, "Your feign death attempt failed.", "yellow")
  end
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 16)
end