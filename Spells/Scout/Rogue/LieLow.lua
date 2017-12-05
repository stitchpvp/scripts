function cast(Caster, Target)
  Stealth(1, Caster)
  SetInCombat(Caster, false)
end

function remove(Caster, Target)
  RemoveStealth(Caster)
end
