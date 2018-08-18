function cast(Caster, Target, MinHate, MaxHate)
  AddControlEffect(Target, 15)
  AddTimer(Caster, 2000, "remove_taunt_lock")
  
  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  else
    AddHate(Caster, Target, math.random(MinHate, MaxHate), 1)
  end
end

function tick(Caster, Target, MinHate, MaxHate, MinTickHate, MaxTickHate)
  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  else
    AddHate(Caster, Target, math.random(MinTickHate, MaxTickHate), 1)
  end
end

function remove_taunt_lock(Caster, Target)
  RemoveControlEffect(Target, 15)
end