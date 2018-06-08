function cast(Caster, Target, MaxHP, Avoidance, Offensive, Resists)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), Offensive)
  AddSkillBonus(Caster, GetSkillIDByName("Focus"), Offensive)

  AddSpellBonus(Caster, 500, MaxHP)
  AddSpellBonus(Caster, 201, Resists)
  AddSpellBonus(Caster, 202, Resists)
  AddSpellBonus(Caster, 203, Resists)
  AddSpellBonus(Caster, 696, Avoidance)
end
