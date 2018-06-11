function cast(Caster, Target, Accuracy, SkillAmt)
  AddSpellBonus(Target, 682, Accuracy)
  AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
  
  if GetClass(Target) ~= RANGER then
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
	AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
  end
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
  RemoveSpellBonus(Target)
end