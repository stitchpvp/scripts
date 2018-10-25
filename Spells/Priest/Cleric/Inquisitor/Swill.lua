function cast(Caster, Target, Skill)
  BreatheUnderwater(Target, true)
  AddSkillBonus(Target, GetSkillIDByName("Swimming"), Skill)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
  BreatheUnderwater(Target, false)
end
