function cast(Caster, Target, BonusAmt, StaBonusAmt, AvdBonusAmt, OffSkillAmt, DefSkillAmt, ResistAmt, ArmorBonusAmt)
    AddSpellBonus(Target, 313, BonusAmt)
    AddSpellBonus(Target, 1, StaBonusAmt)
    AddSpellBonus(Target, 696, AvdBonusAmt)

    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkillAmt)

    AddSkillBonus(Target, GetSkillIDByName("Aggression"), DefSkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkillAmt)

    AddSpellBonus(Target, 202, ResistAmt)

    AddSpellBonus(Target, 678, ArmorBonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end