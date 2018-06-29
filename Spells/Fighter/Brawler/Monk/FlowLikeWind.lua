function cast(Caster, Target, AttackSpeed, DefenseDebuff, OffenseBuff, MinDmg, MaxDmg, SnareAmount)
  local weapon = GetEquippedItemBySlot(Caster, 0)
  local proc_chance = GetProcPercentageForWeapon(weapon, 5.0)

  AddProc(Caster, 3, proc_chance)
  AddSpellBonus(Caster, 617, AttackSpeed)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), DefenseDebuff)
  AddSkillBonus(Caster, GetSkillIDByName("Slashing"), OffenseBuff)
  AddSkillBonus(Caster, GetSkillIDByName("Piercing"), OffenseBuff)
  AddSkillBonus(Caster, GetSkillIDByName("Crushing"), OffenseBuff)
  AddSkillBonus(Caster, GetSkillIDByName("Ranged"), OffenseBuff)
end

function proc(Caster, Target, Type, AttackSpeed, DefenseDebuff, OffenseBuff, MinDmg, MaxDmg, SnareAmount)
  CastSpell(Target, 52963937, 1, Caster)
end

function remove(Caster, Target)
  RemoveProc(Caster)
  RemoveSpellBonus(Caster)
  RemoveSkillBonus(Caster)
end