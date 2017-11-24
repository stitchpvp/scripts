function cast(Caster, Target, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)

  if LastSpellAttackHit() then
    CastSpell(Target, 1001532, 1, Caster)
  end
end