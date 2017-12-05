function cast(Caster, Target, Debuff)
  AddSkillBonus(Target, GetSkillIDByName("Crushing"), Debuff)
  AddSkillBonus(Target, GetSkillIDByName("Piercing"), Debuff)
  AddSkillBonus(Target, GetSkillIDByName("Slashing"), Debuff)
  AddSkillBonus(Target, GetSkillIDByName("Ranged"), Debuff)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
end
