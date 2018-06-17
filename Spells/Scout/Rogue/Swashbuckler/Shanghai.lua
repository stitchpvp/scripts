function cast(Caster, Target, MinDmg, MaxDmg, SpellID)
  local DamageType = GetWeaponDamageType(Caster)

  CastSpell(Target, SpellID, 1, Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
end
