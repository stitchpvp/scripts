function cast(Caster, Target, MinVal, MaxVal, ResistAmt)
        AddHate(Caster, Target, MinVal, MaxVal, 1)

    if target ~= nil then
    Interrupt(Target)
    end
    AddSpellBonus(Target, 202, ResistAmt)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
end