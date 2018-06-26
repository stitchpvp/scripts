function cast(Caster, Target, StrBonus, DefenseDebuff, SkillBonus)
  local weapon = GetEquippedItemBySlot(Caster, 0)
  local proc_chance = GetProcPercentageForWeapon(weapon, 3.0)
  
  AddProc(Caster, 3, proc_chance)
  
  AddSpellBonus(Caster, 0, StrBonus)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), DefenseDebuff)
  AddSkillBonus(Caster, GetSkillIDByName("Crushing"), SkillBonus)
  AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillBonus)
  AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillBonus)
  AddSkillBonus(Caster, GetSkillIDByName("Disruption"), SkillBonus)
end

function proc(Caster, Target, Type)
  CastSpell(Target, 186928876, 1, Caster)
end

function remove(Caster, Target)
  RemoveProc(Caster)
  RemoveSpellBonus(Caster)
  RemoveSkillBonus(Caster)
end