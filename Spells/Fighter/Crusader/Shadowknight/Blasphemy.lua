function cast(Caster, Target, MinVal, MaxVal, ResistAmt)
  AddSpellBonus(Target, 202, ResistAmt)  
    AddHate(Caster, Target, MinVal, MaxVal, 1)
    end
    if target ~= nil then
    Interrupt(Target)
    end
    if IsPlayer(Target) then
    SetTarget(Target, Caster)
    end
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
end