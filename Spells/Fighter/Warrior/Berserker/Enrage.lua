function cast(Caster, Target, MinHate, MaxHate)
  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  else
    local HateAmt = math.random(MinHate, MaxHate)
    AddHate(Caster, Target, HateAmt)
  end
end