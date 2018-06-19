function cast(Caster, Target, AgiAmt, AvoidAmt, PhysMit, EleNoxMit, MinDmg, MaxDmg, MoveSpeed)
    AddSpellBonus(Caster, 2, AgiAmt)
    AddProc(Caster, 2, 25)
    AddSpellBonus(Caster, 696, AvoidAmt)
    AddSpellBonus(Caster, 200, PhysMit)
    AddSpellBonus(Caster, 201, EleNoxMit)
    AddSpellBonus(Caster, 202, EleNoxMit)
    AddSpellBonus(Caster, 203, EleNoxMit)
	AddSpellBonus(Caster, 616, MoveSpeed)
end

function proc(Caster, Target, AgiAmt, AvoidAmt, PhysMit, EleNoxMit, MinDmg, MaxDmg, MoveSpeed)
    ProcDamage(Caster, Target, "Death Barrier", 8, MinDmg, MaxDmg)
end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveProc(Caster)
end