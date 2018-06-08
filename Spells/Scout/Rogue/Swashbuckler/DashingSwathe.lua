function cast(Caster, Target, MinDmg, MaxDmg, SpellID)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
  CastSpell(Target, SpellID, 1, Caster)
end
