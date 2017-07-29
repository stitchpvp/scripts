function cast(Caster, Target, NoxBuff)
    AddSpellBonus(Target, 202, NoxBuff)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end