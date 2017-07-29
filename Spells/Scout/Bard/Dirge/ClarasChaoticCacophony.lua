function cast(Caster, Target, BuffAmt)
    AddSkillBonus(Target, 200, BuffAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end