function cast(Caster, Target)
    AddProc(Target, 3, 15.0)
end

function proc(Caster, Target, Type, DmgMin, DmgMax, HealMin, HealMax)
    if Type == 3 then
        ProcDamage(Caster, Target, "Grim Strike", 8, DmgMin, DmgMax)
        SpellHeal("Heal", HealMin, HealMax, Caster, 2, 1)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end