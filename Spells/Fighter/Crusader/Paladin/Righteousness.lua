function cast(Caster, Target, MinHate, MaxHate, Debuff)
  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  else
    AddHate(Caster, Target, math.random(MinHate, MaxHate), 1)
  end

  AddSpellBonus(Target, 203, Debuff)
end