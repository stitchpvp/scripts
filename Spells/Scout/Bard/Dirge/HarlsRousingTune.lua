function cast(Caster, Target, StatAmount, AvoidanceAmt)
    AddSpellBonus(Caster, 0, StatAmount)
    AddSpellBonus(Caster, 2, StatAmount)
    AddSpellBonus(Caster, 680, AvoidanceAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
end