function cast(Caster, Target, PhysReduc, Avoidance, Debuff, Sta, Defensive, EleMitigation, WornArmor)
  AddSpellBonus(Caster, 817, PhysReduc)

  AddSpellBonus(Caster, 696, Avoidance)
  AddSpellBonus(Caster, 1, Sta)
  AddSpellBonus(Caster, 201, EleMitigation)

  AddSkillBonus(Caster, GetSkillIDByName("Slashing"), Debuff)
  AddSkillBonus(Caster, GetSkillIDByName("Piercing"), Debuff)
  AddSkillBonus(Caster, GetSkillIDByName("Crushing"), Debuff)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), Defensive)
  AddSkillBonus(Caster, GetSkillIDByName("Parry"), Defensive)

  AddSpellBonus(Caster, 678, WornArmor)
end
