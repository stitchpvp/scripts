function cast(Caster, Target, MinHate, MaxHate)
  --local HateAmt = math.random(MinHate, MaxHate)

  AddHate(Caster, Target, -1 * MinHate, -1 * MaxHate)

  if IsPlayer(Target) then
    SetTarget(Target, 0xFFFFFFFF)
  end
end