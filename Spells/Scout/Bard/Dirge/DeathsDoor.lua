function cast(Caster, Target, AgiAmt, MinDmg, MaxDmg, AvoidAmt, PhysMit, EleNoxMit)
    AddSpellBonus(Target, 2, AgiAmt)
    AddProc(Target, 2, 25)
    AddSpellBonus(Target, 696, AvoidAmt)
    AddSpellBonus(Target, 200, PhysMit)
    AddSpellBonus(Target, 201, EleNoxMit)
    AddSpellBonus(Target, 202, EleNoxMit)
    AddSpellBonus(Target, 203, EleNoxMit)
end

function proc(Caster, Target, AgiAmt, MinDmg, MaxDmg, AvoidAmt, PhysMit, EleNoxMit)
    ProcDamage(Caster, Target, "Death Barrier", 8, MinDmg, MaxDmg)
end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveProc(Caster)
end
