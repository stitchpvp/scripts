function cast(Caster, Target, IntAmount, SkillAmount)
  AddSpellBonus(Target, 4, IntAmount)
  AddSkillBonus(Target, GetSkillIDByName("Focus"), SkillAmount)
  AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillAmount)
  AddSkillBonus(Target, GetSkillIDByName("Subjugation"), SkillAmount)
  AddSkillBonus(Target, GetSkillIDByName("Ministration"), SkillAmount)
  AddSkillBonus(Target, GetSkillIDByName("Ordination"), SkillAmount)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  RemoveSkillBonus(Target)
end