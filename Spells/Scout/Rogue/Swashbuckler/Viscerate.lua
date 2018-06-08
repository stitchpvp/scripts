function cast(Caster, Target, MinDmg, MaxDmg, AgiDebuff)
  local DamageType = GetWeaponDamageType(Caster)

  AddSpellBonus(Target, 2, AgiDebuff)
  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
end
