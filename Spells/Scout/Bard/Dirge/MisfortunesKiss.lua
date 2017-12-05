function precast(Caster, Target)
    if IsStealthed(Caster) then
        return true
    end
    SendMessage(Caster, "You must be sneaking to use this ability.", "yellow")
    return false, 0
end

function cast(Caster, Target, MinDmg, MaxDmg, WisAmt)


    SpellDamage(Target, 2, MinDmg, MaxDmg)
    AddSpellBonus(Target, 3, WisAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
