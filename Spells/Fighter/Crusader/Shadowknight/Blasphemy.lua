function cast(Caster, Target, MinVal, MaxVal, Debuff)
  AddSpellBonus(Target, 202, Debuff)
  Interrupt(Caster, Target)

  if IsPlayer(Target) then
    AddControlEffect(Target, 15)
    AddSpellTimer(2000, "remove_taunt_lock", Caster, Target)
    SetTarget(Target, Caster)
  else
    AddHate(Caster, Target, math.random(MinVal, MaxVal), 1)
  end
end

function remove_taunt_lock(Caster, Target)
  RemoveControlEffect(Target, 15)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end