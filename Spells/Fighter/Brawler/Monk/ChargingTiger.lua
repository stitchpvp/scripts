function cast(Caster, Target, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)

  if LastSpellAttackHit() then
    CastSpell(Target, 68480171, 1, Caster)
  end
end