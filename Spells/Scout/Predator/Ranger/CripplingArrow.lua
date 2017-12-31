function cast(Caster, Target, MinDmg, MaxDmg, DefenseDebuff)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
  AddSkillBonus(Target, GetSkillIDByName("Deflection"), DefenseDebuff)
  AddSkillBonus(Target, GetSkillIDByName("Parry"), DefenseDebuff)
end