function cast(Caster, Target, MinHate, MaxHate)
  Interrupt(Caster, Target)
  AddControlEffect(Target, 15)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  else
    local HateAmt = math.random(MinHate, MaxHate)
    AddHate(Caster, Target, HateAmt, 1)
  end
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 15)
end
