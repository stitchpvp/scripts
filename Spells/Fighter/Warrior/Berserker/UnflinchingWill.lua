function cast(Caster, Target, DebuffAmt, AggressionAmt, DefenseAmt, ColdMit)
  AddSkillBonus(Caster, 418532101, DebuffAmt)
  AddSkillBonus(Caster, 3048574950, DebuffAmt)
  AddSkillBonus(Caster, 3421494576, DebuffAmt)
  AddSkillBonus(Caster, 723762198, AggressionAmt)
  AddSkillBonus(Caster, 609880714, DefenseAmt)
  AddSkillBonus(Caster, 540022425, DefenseAmt)
  AddSpellBonus(Caster, 201, ColdMit)
end

function remove(Caster, Target)
  RemoveSkillBonus(Caster)
  RemoveSpellBonus(Caster)
end
