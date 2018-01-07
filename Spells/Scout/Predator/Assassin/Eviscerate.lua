function precast(Caster, Target)
  if IsStealthed(Caster) and (IsBehind(Caster, Target) or IsFlanking(Caster, Target)) then
    return true
  else
    return false
  end
end

function cast(Caster, Target, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
end