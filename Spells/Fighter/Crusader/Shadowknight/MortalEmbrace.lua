function cast(Caster, Target, Chance)
  AddControlEffect(Target, 16)

  local roll = math.random(1, 100)

  if roll <= Chance then
    SendMessage(Caster, "Your feign death succeeded.", "yellow")
    SendMessage(Target, "Your feign death succeeded.", "yellow")
    SetIgnoredByMobs(Target, true)
    ClearHate(Target)
  else
    SendMessage(Caster, "Your feign death attempt failed.", "yellow")
    SendMessage(Target, "Your feign death attempt failed.", "yellow")
  end
end

function remove(Caster, Target)
  SetIgnoredByMobs(Target, false)
  RemoveControlEffect(Target, 16)
end
