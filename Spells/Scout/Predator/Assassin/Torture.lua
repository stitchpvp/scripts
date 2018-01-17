function cast(Caster, Target, DefenseDebuff, MitDebuff)
  AddSkillBonus(Target, GetSkillIDByName("Defense"), DefenseDebuff)
  AddSpellBonus(Target, 204, MitDebuff)
end