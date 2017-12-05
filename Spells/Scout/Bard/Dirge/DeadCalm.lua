function cast(Caster, Target)
    AddProc(Target, 1, 12.0)
end

function proc(Caster, Target, Type, DmgMin, DmgMax)
    if Type == 3 then
        ProcDamage(Caster, Target, "Crypt's Revenge", 8, DmgMin, DmgMax)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end
