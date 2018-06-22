function cast(Caster, Target, WisDebuff, DefDebuff)
  AddSpellBonus(Target, 3, WisDebuff)
  AddSkillBonus(Target, 609880714, DefDebuff)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  RemoveSkillBonus(Target)
end