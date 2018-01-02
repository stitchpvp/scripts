function precast(Caster, Target)
  if IsStealthed(Caster) then
    return true
  else
    return false
  end
end

function cast(Caster, Target, MinDmg, MaxDmg, IntDebuff)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
  AddSpellBonus(Target, 4, IntDebuff)
end