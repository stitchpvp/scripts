function cast(Caster, Target, MinHate, MaxHate, Debuff)
  AddSpellBonus(Target, 203, Debuff)
  AddControlEffect(Target, 15)
  AddTimer(Caster, 2000, "remove_taunt_lock")
  
  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  else
    AddHate(Caster, Target, math.random(MinHate, MaxHate), 1)
  end
end

function remove_taunt_lock(Caster, Target)
  RemoveControlEffect(Target, 15)
end