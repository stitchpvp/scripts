function cast(Caster, Target, AgiDebuff, DefDebuff)
  AddSpellBonus(Target, 2, AgiDebuff)
  AddSkillBonus(Target, 609880714, DefDebuff)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  RemoveSkillBonus(Target)
end
