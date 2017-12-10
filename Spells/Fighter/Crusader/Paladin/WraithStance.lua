function cast(Caster, Target, StrBonus, DefenseDebuff, SkillBonus)
  AddSpellBonus(Caster, 0, StrBonus)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), DefenseDebuff)
  AddSkillBonus(Caster, GetSkillIDByName("Crushing"), SkillBonus)
  AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillBonus)
  AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillBonus)
  AddSkillBonus(Caster, GetSkillIDByName("Disruption"), SkillBonus)
end