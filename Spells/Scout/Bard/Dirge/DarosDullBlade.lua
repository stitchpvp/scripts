function precast(Caster, Target)
    if IsFlanking(Caster, Target) then
        return true
    else
        SendMessage(Caster, "You must be flanking or behind your target to use this ability!", "yellow")
        return false
    end
end

function cast(Caster, Target, MinDmg, MaxDmg, DPSDebuff)

    SpellDamage(Target, 2, MinDmg, MaxDmg)
    AddSpellBonus(Target, 629, DPSDebuff)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end
