function cast(Caster, Target, AtkSpd, Debuff)
  AddSpellBonus(Target, 617, AtkSpd)
  AddSkillBonus(Target, GetSkillIDByName("Crushing"), Debuff)
  AddSkillBonus(Target, GetSkillIDByName("Piercing"), Debuff)
  AddSkillBonus(Target, GetSkillIDByName("Slashing"), Debuff)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  RemoveSkillBonus(Target)
end
