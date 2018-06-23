function cast(Caster, Target, BuffAmt)
  AddSkillBonus(Target, GetSkillIDByName("Slashing"), BuffAmt)
  AddSkillBonus(Target, GetSkillIDByName("Piercing"), BuffAmt)
  AddSkillBonus(Target, GetSkillIDByName("Crushing"), BuffAmt)
  AddSkillBonus(Target, GetSkillIDByName("Ranged"), BuffAmt)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
end