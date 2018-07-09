function precast(Caster)
  return (not IsInCombat(Caster)), 12
end

function cast(Caster, Target)
  Stealth(2, Target)
end