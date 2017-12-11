function cast(Caster, Target, Sta, Offensive)
  AddSpellBonus(Target, 1, Sta)
  AddSkillBonus(Target, GetSkillIDByName("Crushing"), Offensive)
  AddSkillBonus(Target, GetSkillIDByName("Piercing"), Offensive)
  AddSkillBonus(Target, GetSkillIDByName("Slashing"), Offensive)
  AddSkillBonus(Target, GetSkillIDByName("Ranged"), Offensive)
end