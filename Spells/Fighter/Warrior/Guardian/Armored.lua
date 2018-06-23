function cast(Caster, Target, PhysReduc, Avoidance, Debuff, Sta, Defensive, NoxArcaneMitigation, EleMitigation, WornArmor)
  AddSpellBonus(Caster, 817, PhysReduc)

  AddSpellBonus(Caster, 696, Avoidance)
  AddSpellBonus(Caster, 1, Sta)
  AddSpellBonus(Caster, 201, EleMitigation)
  AddSpellBonus(Caster, 202, NoxArcaneMitigation)
  AddSpellBonus(Caster, 203, NoxArcaneMitigation)

  AddSkillBonus(Caster, GetSkillIDByName("Slashing"), Debuff)
  AddSkillBonus(Caster, GetSkillIDByName("Piercing"), Debuff)
  AddSkillBonus(Caster, GetSkillIDByName("Crushing"), Debuff)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), Defensive)
  AddSkillBonus(Caster, GetSkillIDByName("Parry"), Defensive)

  AddSpellBonus(Caster, 678, WornArmor)
end