function precast(Caster, Target)
  if IsBehind(Caster, Target) or IsFlanking(Caster, Target) then
    return true
  else
    return false
  end
end

function cast(Caster, Target, MinDmg, MaxDmg)
  Interrupt(Caster, Target)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
end
