function cast(Caster, Target, MinDmg, MaxDmg, MitDebuff)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
  AddSpellBonus(Target, 200, MitDebuff)
end
