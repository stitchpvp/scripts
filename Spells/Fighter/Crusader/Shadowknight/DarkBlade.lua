function cast(Caster, Target, BonusAmt, DefSkillAmt, SkillAmt)
    AddSpellBonus(Target, 0, BonusAmt)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkillAmt)

    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end