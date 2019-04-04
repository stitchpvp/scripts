function cast(Caster, Target, Skills, MinDmg1, MaxDmg1, MinDmg2, MaxDmg2, Chance)
  AddSkillBonus(Target, GetSkillIDByName("Crushing"), Skills)
  AddSkillBonus(Target, GetSkillIDByName("Piercing"), Skills)
  AddSkillBonus(Target, GetSkillIDByName("Slashing"), Skills)
  AddSkillBonus(Target, GetSkillIDByName("Ranged"), Skills)
  AddProc(Target, 3, 15)
  AddProc(Target, 5, Chance)
end

function proc(Caster, Target)
  local spell_caster = GetCaster()
  CastSpell(Target, 86484134, 1, spell_caster)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
  RemoveProc(Target)
end
