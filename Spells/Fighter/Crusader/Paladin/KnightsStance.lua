function cast(Caster, Target, Sta, Avoidance, Offensive, Defensive, ArcaneMitigation)
  AddSpellBonus(Caster, 817, 5)

  AddSpellBonus(Caster, 1, Sta)
  AddSpellBonus(Caster, 696, Avoidance)
  AddSpellBonus(Caster, 203, ArcaneMitigation)

  AddSkillBonus(Caster, GetSkillIDByName("Slashing"), Offensive)
  AddSkillBonus(Caster, GetSkillIDByName("Piercing"), Offensive)
  AddSkillBonus(Caster, GetSkillIDByName("Crushing"), Offensive)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), Defensive)
  AddSkillBonus(Caster, GetSkillIDByName("Aggression"), Defensive)

  AddSpellBonus(Caster, 678, 15)
end