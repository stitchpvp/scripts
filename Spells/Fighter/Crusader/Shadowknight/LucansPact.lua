function cast(Caster, Target, StaBonusAmt, AvdBonusAmt, OffSkillAmt, DefSkillAmt, NoxResist, AllResists)
  AddSpellBonus(Target, 1, StaBonusAmt)
  AddSpellBonus(Target, 696, AvdBonusAmt)

  AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkillAmt)
  AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkillAmt)
  AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkillAmt)

  AddSkillBonus(Target, GetSkillIDByName("Aggression"), DefSkillAmt)
  AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkillAmt)

  AddSpellBonus(Target, 202, NoxResist)

  AddSpellBonus(Target, 201, AllResists)
  AddSpellBonus(Target, 202, AllResists)
  AddSpellBonus(Target, 203, AllResists)
  AddSpellBonus(Target, 678, 15)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
  RemoveSpellBonus(Target)
end