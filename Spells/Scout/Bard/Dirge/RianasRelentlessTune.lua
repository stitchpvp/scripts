function cast(Caster, Target, MultiAmt)

    AddSpellBonus(Target, 634, MultiAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end