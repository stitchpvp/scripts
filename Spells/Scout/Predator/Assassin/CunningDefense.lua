function cast(Caster, Target, BaseAvoidance, OffensiveDebuff, DefensiveDebuff)
  AddSpellBonus(Caster, 696, BaseAvoidance)
  AddSkillBonus(Caster, GetSkillIDByName("Piercing"), OffensiveDebuff)
  AddSkillBonus(Caster, GetSkillIDByName("Slashing"), OffensiveDebuff)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), DefensiveDebuff)
  AddSkillBonus(Caster, GetSkillIDByName("Parry"), DefensiveDebuff)
end
