function cast(Caster, Target, Avoidance, Defensive)
  AddSkillBonus(Caster, GetSkillIDByName("Defense"), Defensive)
end

function remove(Caster, Target)
  RemoveSkillBonus(Caster)
end