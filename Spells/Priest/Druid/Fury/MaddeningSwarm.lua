function cast(Caster, Target, Debuff)
  Interrupt(Caster, Target)
  AddSkillBonus(Target, GetSkillIDByName("Disruption"), Debuff)
  AddSkillBonus(Target, GetSkillIDByName("Subjugation"), Debuff)
  AddSkillBonus(Target, GetSkillIDByName("Ordination"), Debuff)
  AddSkillBonus(Target, GetSkillIDByName("Ministration"), Debuff)
  AddSkillBonus(Target, GetSkillIDByName("Focus"), Debuff)
  AddSkillBonus(Target, GetSkillIDByName("Aggression"), Debuff)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
end
