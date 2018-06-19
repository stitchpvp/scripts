function cast(Caster, Target, Physical, EleResist)
  AddSkillBonus(Target, 200, Physical)
  AddSkillBonus(Target, 201, EleResist)
  AddSkillBonus(Target, 202, EleResist)
  AddSkillBonus(Target, 203, EleResist)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
end