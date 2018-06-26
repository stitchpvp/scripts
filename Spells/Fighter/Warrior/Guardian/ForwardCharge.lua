function cast(Caster, Target, Strength, DebuffAmt, BuffAmt)
  local weapon = GetEquippedItemBySlot(Caster, 0)
  local proc_chance = GetProcPercentageForWeapon(weapon, 3.0)

  AddProc(Caster, 3, proc_chance)
  AddSpellBonus(Caster, 0, Strength)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), DebuffAmt)
  AddSkillBonus(Caster, GetSkillIDByName("Slashing"), BuffAmt)
  AddSkillBonus(Caster, GetSkillIDByName("Piercing"), BuffAmt)
  AddSkillBonus(Caster, GetSkillIDByName("Crushing"), BuffAmt)
end

function proc(Caster, Target, Type, Strength, DebuffAmt, BuffAmt, MinDmg, MaxDmg)
  ProcDamage(Caster, Target, "Sword Flurry", 1, MinDmg, MaxDmg)
  ProcDamage(Caster, Target, "Sword Flurry", 1, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  RemoveSkillBonus(Caster)
  RemoveProc(Caster)
end