function cast(Caster, Target, DebuffAmt, MinDmg, MaxDmg)
    Interrupt(Target)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DebuffAmt)
    SpellDamage(Target, 8, MinDmg, MaxDmg)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
