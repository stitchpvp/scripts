function cast(Caster, Target, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  AddControlEffect(Target, 5)
  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
end