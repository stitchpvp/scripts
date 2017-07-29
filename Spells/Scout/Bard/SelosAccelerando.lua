function cast(Caster, Target, Buff)
    AddSpellBonus(Target, 608, Buff)
end

function remove(Caster, Target, Buff)
    RemoveSpellBonus(Target)
end