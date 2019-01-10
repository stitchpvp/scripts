function cast(Caster, Target, MinHate, MaxHate, Debuff)
  AddSpellBonus(Target, 203, Debuff)

  if IsPlayer(Target) then
    AddControlEffect(Target, 15)
    AddSpellTimer(2000, "remove_taunt_lock", Caster, Target)
    SetTarget(Target, Caster)
  else
    AddHate(Caster, Target, math.random(MinHate, MaxHate), 1)
  end
end

function remove_taunt_lock(Caster, Target)
  RemoveControlEffect(Target, 15)
end
