function cast(Caster, Target, DmgMin, DmgMax, HealMin, HealMax)

    SetSpellTriggerCount(5, 1)

    AddProc(Target, 2, 100)
end

function proc(Caster, Target, Type, DmgMin, DmgMax, HealMin, HealMax)
    if Type == 2 then
        ProcDamage(Caster, Target, "Voracious Soul", 8, DmgMin, DmgMax)
        ProcHeal(Caster, Caster, "Unholy Blessing", "Heal", HealMin, HealMax)

        RemoveTriggerFromSpell(1)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end