function cast(Caster, Target, Avoidance, Parry)
  AddSkillBonus(Caster, GetSkillIDByName("Parry"), Parry)
end

function remove(Caster, Target)
  RemoveSkillBonus(Caster)
end