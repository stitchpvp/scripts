function precast(Caster, Target)
  if IsBehind(Caster, Target) or IsFlanking(Caster, Target) then
    return true
  else
    return false
  end
end

function cast(Caster, Target, MinDmg, MaxDmg, DotDmg)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
  SpellDamage(Target, 2, DotDmg, DotDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg, DotDmg)
  SpellDamage(Target, 2, DotDmg, DotDmg)
end
