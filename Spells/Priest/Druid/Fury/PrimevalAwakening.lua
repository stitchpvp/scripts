function cast(Caster, Target, Heal, Attribute, Skills, Power)
  local maxhealth_percentage = GetMaxHP(Target) * 0.15
  SpellHeal(Target, "Heal", maxhealth_percentage, maxhealth_percentage)
  SpellHeal(Target, "Power", Power, Power)
  AddSpellBonus(Target, 4, Attribute)
  AddSkillBonus(Target, GetSkillIDByName("Disruption"), Skills)
  AddSkillBonus(Target, GetSkillIDByName("Subjugation"), Skills)
  AddSkillBonus(Target, GetSkillIDByName("Focus"), Skills)
  SetIllusion(Target, 212)
end

function tick(Caster, Target, Heal, Attribute, Skills, Power)
  SpellHeal(Target, "Power", Power, Power)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  RemoveSkillBonus(Target)
  SetIllusion(Target, 0)
end
