function cast(Caster, Target, StatAmount, AvoidanceAmt)
    AddSpellBonus(Target, 0, StatAmount)
    AddSpellBonus(Target, 2, StatAmount)
    AddSpellBonus(Target, 696, AvoidanceAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end