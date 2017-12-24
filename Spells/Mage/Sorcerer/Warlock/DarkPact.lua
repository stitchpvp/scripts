function cast(Caster, Target, SkillBonus)
  AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillBonus)
  AddSkillBonus(Target, GetSkillIDByName("Subjugation"), SkillBonus)
  AddSkillBonus(Target, GetSkillIDByName("Ordination"), SkillBonus)
  AddSkillBonus(Target, GetSkillIDByName("Ministration"), SkillBonus)
  AddSkillBonus(Target, GetSkillIDByName("Aggression"), SkillBonus)
end