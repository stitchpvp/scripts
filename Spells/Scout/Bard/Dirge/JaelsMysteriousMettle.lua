function cast(Caster, Target, BuffAmt)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), BuffAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
