function cast(Caster, Target)
    AddProc(Target, 3, 15.0)
end

function proc(Caster, Target, Type, DmgMin, DmgMax, HealMin, HealMax)
    if Type == 3 then
        ProcDamage(Caster, Target, "Grim Strike", 8, DmgMin, DmgMax)
        ProcHeal(Caster, Caster, "Grim Strike", "Heal", HealMin, HealMax)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end
