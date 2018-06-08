function cast(Caster, Target, SpellID, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
  CastSpell(Target, SpellID, 1, Caster)
end
