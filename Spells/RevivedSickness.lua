function cast(Caster, Target, Power, Haste, Attributes, Skills)
  local power_percentage = GetMaxPower(Caster) * Power

  ModifyPower(Caster, power_percentage)
  AddSpellBonus(Caster, 617, Haste)
  AddSpellBonus(Caster, 0, Attributes)
  AddSpellBonus(Caster, 1, Attributes)
  AddSpellBonus(Caster, 2, Attributes)
  AddSpellBonus(Caster, 3, Attributes)
  AddSpellBonus(Caster, 4, Attributes)
  AddSkillBonus(Caster, GetSkillIDByName("Disruption"), Skills)
  AddSkillBonus(Caster, GetSkillIDByName("Subjugation"), Skills)
  AddSkillBonus(Caster, GetSkillIDByName("Ordination"), Skills)
  AddSkillBonus(Caster, GetSkillIDByName("Ministration"), Skills)
  AddSkillBonus(Caster, GetSkillIDByName("Focus"), Skills)
  AddSkillBonus(Caster, GetSkillIDByName("Slashing"), Skills)
  AddSkillBonus(Caster, GetSkillIDByName("Crushing"), Skills)
  AddSkillBonus(Caster, GetSkillIDByName("Piercing"), Skills)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), Skills)
  AddSkillBonus(Caster, GetSkillIDByName("Parry"), Skills)
  AddSkillBonus(Caster, GetSkillIDByName("Deflection"), Skills)
  AddSkillBonus(Caster, GetSkillIDByName("Ranged"), Skills)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  RemoveSkillBonus(Caster)
end