function cast(Caster, Target, MinHate, MaxHate)
  AddControlEffect(Target, 15)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  else
    local HateAmt = math.random(MinHate, MaxHate)
    AddHate(Caster, Target, HateAmt)
  end
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 15)
end