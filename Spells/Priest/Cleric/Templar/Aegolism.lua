function cast(Caster, Target, MaxHP, Offensive)
  AddSpellBonus(Target, 500, MaxHP)
  AddSkillBonus(Target, GetSkillIDByName("Crushing"), Offensive)
  AddSkillBonus(Target, GetSkillIDByName("Piercing"), Offensive)
  AddSkillBonus(Target, GetSkillIDByName("Slashing"), Offensive)
  AddSkillBonus(Target, GetSkillIDByName("Ranged"), Offensive)
end
