function cast(Caster, Target, Debuff, DefenseBuff, MitBuff)
  AddSkillBonus(Caster, 418532101, Debuff)
  AddSkillBonus(Caster, 3048574950, Debuff)
  AddSkillBonus(Caster, 3421494576, Debuff)
  AddSkillBonus(Caster, 609880714, DefenseBuff)
  AddSkillBonus(Caster, 540022425, DefenseBuff)
  AddSpellBonus(Caster, 204, MitBuff)
end

function remove(Caster, Target)
  RemoveSkillBonus(Caster)
  RemoveSpellBonus(Caster)
end
