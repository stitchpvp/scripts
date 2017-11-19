function cast(Caster, Target, MultiAmt)
    AddSpellBonus(Target, 641, MultiAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end