function cast(Caster, Target, Attribute, Haste, DPS, Crushing, Slashing, Heal, HealTick)
  local hp_perc = GetMaxHP(Target) * Heal
  AddSpellBonus(Target, 0, Attribute)
  AddSpellBonus(Target, 1, Attribute)
  AddSpellBonus(Target, 2, Attribute)
  AddSpellBonus(Target, 3, Attribute)
  AddSpellBonus(Target, 4, Attribute)
  AddSpellBonus(Target, 617, Haste)
  AddSpellBonus(Target, 629, DPS)
  AddSkillBonus(Target, GetSkillIDByName("Crushing"), Crushing)
  AddSkillBonus(Target, GetSkillIDByName("Slashing"), Slashing)
  AddSkillBonus(Target, GetSkillIDByName("Piercing"), Slashing)
  SetIllusion(Target, 3711)

  SpellHeal(Target, "Heal", hp_perc, hp_perc)
end

function tick(Caster, Target, Attribute, Haste, DPS, Crushing, Slashing, Heal, HealTick)
  local hp_perctick = GetMaxHP(Target) * HealTick
  SpellHeal(Target, "Heal", hp_perctick, hp_perctick)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  RemoveSkillBonus(Target)
  SetIllusion(Target, 0)
end
