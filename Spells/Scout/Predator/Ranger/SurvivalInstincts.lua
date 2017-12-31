function cast(Caster, Target, Agi, BaseAvoidance, OffensiveDebuff, Parry, Defense)
  AddSpellBonus(Caster, 2, Agi)
  AddSpellBonus(Caster, 696, BaseAvoidance)
  AddSkillBonus(Caster, GetSkillIDByName("Piercing"), OffensiveDeuff)
  AddSkillBonus(Caster, GetSkillIDByName("Slashing"), OffensiveDeuff)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), Defense)
  AddSkillBonus(Caster, GetSkillIDByName("Parry"), Parry)
end