function cast(Caster, Target, MinDmg, MaxDmg, Debuff)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)

  AddSkillBonus(Target, GetSkillIDByName("Defense"), Debuff)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
end
