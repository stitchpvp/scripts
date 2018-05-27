function cast(Caster, Target, MinHate, MaxHate)
  local HateAmt = math.random(math.floor(MinHate), MaxHate)

  AddHate(Caster, Target, -1 * HateAmt)

  if IsPlayer(Target) then
    SetTarget(Target, 0xFFFFFFFF)
  end
end
