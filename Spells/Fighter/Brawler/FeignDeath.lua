function cast(Caster, Target, Chance)
  AddControlEffect(Caster, 16)

  local roll = math.random(1, 100)

  if roll <= Chance then
    SendMessage(Caster, "Your feign death succeeded.", "yellow")
    SetIgnoredByMobs(Caster, true)
    ClearHate(Caster)
  else
    SendMessage(Caster, "Your feign death attempt failed.", "yellow")
  end
end

function remove(Caster)
  SetIgnoredByMobs(Caster, false)
end
