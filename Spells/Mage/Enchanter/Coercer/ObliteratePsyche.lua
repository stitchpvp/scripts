function cast(Caster, Target, Debuff)
  AddSkillBonus(Target, 203, Debuff)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
end