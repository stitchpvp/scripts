function cast(Caster, Target, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  CastSpell(Target, 68480171, 1, Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
end
