function cast(Caster, Target, OffensiveBuff, FocusBuff)
  AddSkillBonus(Target, GetSkillIDByName("Disruption"), OffensiveBuff)
  AddSkillBonus(Target, GetSkillIDByName("Subjugation"), OffensiveBuff)
  AddSkillBonus(Target, GetSkillIDByName("Ordination"), OffensiveBuff)
  AddSkillBonus(Target, GetSkillIDByName("Ministration"), OffensiveBuff)
  AddSkillBonus(Target, GetSkillIDByName("Aggression"), OffensiveBuff)
  AddSkillBonus(Target, GetSkillIDByName("Focus"), FocusBuff)
end