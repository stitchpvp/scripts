function cast(Caster, Target, DefenseDebuff, OffensiveBuff)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), DefenseDebuff)
  AddSkillBonus(Caster, GetSkillIDByName("Crushing"), OffensiveBuff)
  AddSkillBonus(Caster, GetSkillIDByName("Piercing"), OffensiveBuff)
  AddSkillBonus(Caster, GetSkillIDByName("Ranged"), OffensiveBuff)
  AddSkillBonus(Caster, GetSkillIDByName("Slashing"), OffensiveBuff)

  AddProc(Caster, 3, 30)
end

function proc(Caster, Target, Type, DefenseDebuff, OffensiveBuff, ProcDmg)
  local DamageType = GetWeaponDamageType(Caster)

  ProcDamage(Caster, Target, "Quick Shot", DamageType, ProcDmg)
end

function remove(Caster)
  RemoveProc(Caster)
end