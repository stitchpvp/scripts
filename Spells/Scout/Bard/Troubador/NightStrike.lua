function cast(Caster, Target, MinDmg, MaxDmg, IntDebuff)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
  AddSpellBonus(Target, 4, IntDebuff)
end
