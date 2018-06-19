function cast(Caster, Target, DpsAmt)
    AddSpellBonus(Target, 629, DpsAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end