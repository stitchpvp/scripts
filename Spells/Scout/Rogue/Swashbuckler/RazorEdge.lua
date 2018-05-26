function cast(Caster, Target, MinDmg, MaxDmg, ParryDebuff)
  local DamageType = GetWeaponDamageType(Caster)

  AddSkillBonus(Target, GetSkillIDByName("Parry"), ParryDebuff)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
end
