function cast(Caster, Target, MinVal, MaxVal, Debuff)
  AddHate(Caster, Target, MinVal, MaxVal, 1)
  AddSpellBonus(Target, 202, Debuff)
  Interrupt(Caster, Target)
  AddControlEffect(Target, 15)
  AddTimer(Caster, 2000, "remove_taunt_lock")

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  end
end

function remove_taunt_lock(Caster, Target)
  RemoveControlEffect(Target, 15)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end