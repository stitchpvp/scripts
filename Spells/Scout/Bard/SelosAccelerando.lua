function cast(Caster, Target, Buff)
    AddSpellBonus(Target, 609, Buff)
end

function remove(Caster, Target, Buff)
    RemoveSpellBonus(Target)
end
