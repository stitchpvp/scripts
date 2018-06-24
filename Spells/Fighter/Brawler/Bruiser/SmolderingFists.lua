function cast(Caster, Target, MinDmg, MaxDmg, DefenseDebuff, OffenseBuff, Haste)
  local weapon = GetEquippedItemBySlot(Caster, 0)
  local proc_chance = GetProcPercentageForWeapon(weapon, 5.0)

  AddProc(Caster, 3, proc_chance)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), DefenseDebuff)
  AddSkillBonus(Caster, GetSkillIDByName("Slashing"), OffenseBuff)
  AddSkillBonus(Caster, GetSkillIDByName("Piercing"), OffenseBuff)
  AddSkillBonus(Caster, GetSkillIDByName("Crushing"), OffenseBuff)
  AddSkillBonus(Caster, GetSkillIDByName("Ranged"), OffenseBuff)
  AddSpellBonus(Caster, 617, Haste)
end

function proc(Caster, Target, Type, MinDmg, MaxDmg, DefenseDebuff, OffensiveBuff, Haste)
  ProcDamage(Caster, Target, "Engulf", 3, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveProc(Caster)
  RemoveSpellBonus(Caster)
  RemoveSkillBonus(Caster)
end