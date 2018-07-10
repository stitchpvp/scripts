function cast(Caster, Target, Chance)
  AddControlEffect(Caster, 16)

  local player_target = GetTarget(Caster)
    if IsPlayer(player_target) then
      SetTarget(player_target, 0xFFFFFFFF)
    end
	
  local roll = math.random(1, 100);
  if roll <= Chance then
	SendMessage(Caster, "Your feign death succeeded.", "yellow")
	ClearHate(Caster)
  else
    SendMessage(Caster, "Your feign death attempt failed.", "yellow")
  end
end
