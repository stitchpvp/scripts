function cast(Caster, Target, MinDmg, MaxDmg)
        AddControlEffect(Target, 3)
        SpellDamage(Target, 8, MinDmg, MaxDmg)
end

function remove(Caster, Target, MinDmg, MaxDmg)
    RemoveControlEffect(Target, 3)
end
