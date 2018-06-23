function cast(Caster, Target, Strength, DebuffAmt, BuffAmt)
  AddSpellBonus(Caster, 0, Strength)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), DebuffAmt)
  AddSkillBonus(Caster, GetSkillIDByName("Slashing"), BuffAmt)
  AddSkillBonus(Caster, GetSkillIDByName("Piercing"), BuffAmt)
  AddSkillBonus(Caster, GetSkillIDByName("Crushing"), BuffAmt)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  RemoveSkillBonus(Caster)
end