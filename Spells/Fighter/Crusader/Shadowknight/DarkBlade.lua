function cast(Caster, Target, BonusAmt, DefSkillAmt, SkillAmt)
  AddSpellBonus(Caster, 0, BonusAmt)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), DefSkillAmt)

  AddSkillBonus(Caster, GetSkillIDByName("Crushing"), SkillAmt)
  AddSkillBonus(Caster, GetSkillIDByName("Disruption"), SkillAmt)
  AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillAmt)
  AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillAmt)
  AddProc(Caster, 1, 12)
end

function proc(Caster, Target, Type)
  CastSpell(Target, 53638705, 1, Caster)
end

function remove(Caster, Target)
  RemoveProc(Caster)
  RemoveSpellBonus(Caster)
  RemoveSkillBonus(Caster)
end