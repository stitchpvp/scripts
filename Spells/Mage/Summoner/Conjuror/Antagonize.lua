function cast(Caster, Target, Haste, Debuff, MeleeSkills, SpellSkills, AbilityMod)
  AddSpellBonus(Target, 617, Haste)

  AddSkillBonus(Target, GetSkillIDByName("Defense"), Debuff)
  AddSkillBonus(Target, GetSkillIDByName("Parry"), Debuff)
  AddSkillBonus(Target, GetSkillIDByName("Slashing"), MeleeSkills)
  AddSkillBonus(Target, GetSkillIDByName("Piercing"), MeleeSkills)
  AddSkillBonus(Target, GetSkillIDByName("Crushing"), MeleeSkills)
  AddSkillBonus(Target, GetSkillIDByName("Disruption"), SpellSkills)
  AddSkillBonus(Target, GetSkillIDByName("Subjugation"), SpellSkills)
  AddSkillBonus(Target, GetSkillIDByName("Ordination"), SpellSkills)

  AddSpellBonus(Target, 707, AbilityMod)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  RemoveSkillBonus(Target)
end