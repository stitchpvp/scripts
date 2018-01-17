function cast(Caster, Target, DefenseDebuff, OffenseBuff)
  local Weapon = GetEquippedItemBySlot(Caster, 0)
  local ProcChance = GetProcPercentageForWeapon(Weapon, 2.0)

  AddProc(Caster, 3, ProcChance)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), DefenseDebuff)
  AddSkillBonus(Caster, GetSkillIDByName("Slashing"), OffenseBuff)
  AddSkillBonus(Caster, GetSkillIDByName("Piercing"), OffenseBuff)
  AddSkillBonus(Caster, GetSkillIDByName("Ranged"), OffenseBuff)
  AddSkillBonus(Caster, GetSkillIDByName("Crushing"), OffenseBuff)
end

function proc(Caster, Target, Type, DefenseDebuff, OffenseBuff, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  ProcDamage(Caster, Target, "Swipe", DamageType, MinDmg, MaxDmg)
end

function remove(Caster)
  RemoveProc(Caster)
end