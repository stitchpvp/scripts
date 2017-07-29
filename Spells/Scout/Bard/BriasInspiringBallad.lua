function cast(Caster, Target, RegenAmt)
    AddSpellBonus(Target, 601, RegenAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end