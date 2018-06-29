function cast(Caster, Target, Avoidance, Deflection)
  AddSkillBonus(Caster, GetSkillIDByName("Deflection"), Deflection)
end

function remove(Caster, Target)
  RemoveSkillBonus(Caster)
end