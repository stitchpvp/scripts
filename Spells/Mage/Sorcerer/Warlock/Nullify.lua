function cast(Caster, Target, MinHate, MaxHate)
  if IsPlayer(Target) then
    SetTarget(Target, 0xFFFFFFFF)
  else
    local HateAmount = -1 * (math.random(math.abs(MinHate), math.abs(MaxHate)))
    AddHate(Caster, Target, HateAmount, 1)
  end

  AddControlEffect(Target, 4)
  Interrupt(Caster, Target)
end