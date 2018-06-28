function cast(Caster, Target, MinVal, MaxVal, Debuff)
  AddHate(Caster, Target, MinVal, MaxVal, 1)
  AddSpellBonus(Target, 202, Debuff)

  Interrupt(Target)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  end
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end