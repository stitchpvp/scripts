function cast(Caster, Target, BonusAmt, HateAmt, Dmg)
    AddSpellBonus(Target, 201, BonusAmt)
    AddSpellBonus(Target, 202, BonusAmt)
    AddSpellBonus(Target, 203, BonusAmt)
    AddProc(Target, 4, 100)
end

function proc(Caster, Target, Type, BonusAmt, HateAmt, Dmg)
    if Type == 4 then
        AddHate(Caster, Target, HateAmt)
        ProcDamage(Caster, Target, "Caress Feedback", 8, Dmg)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end