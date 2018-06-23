function cast(Caster, Target, MinDmg, MaxDmg, Threat)
  local DamageType = GetWeaponDamageType(Caster)

  AddHate(Caster, Target, Threat)
  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
end