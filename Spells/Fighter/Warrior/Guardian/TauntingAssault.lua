function cast(Caster, Target, MinDmg, MaxDmg, MinHate)
  SpellDamage(Target, 0, MinDmg, MaxDmg)
  AddControlEffect(Target, 15)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  else
    AddHate(Caster, Target, MinHate, 1)
  end
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 15)
end
