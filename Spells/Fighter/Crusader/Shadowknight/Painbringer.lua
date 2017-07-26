function cast(Caster, Target, MinDmg, MaxDmg, DoTMax, HealMin, HealMax)
        SpellDamage(Target, 0, MinDmg, MaxDmg)
        SpellHeal("Heal", HealMin, HealMax, Caster, 2, 1)
end

function tick(Caster, Target, MinDmg, MaxDmg, DoTMax, HealMin, HealMax)
        SpellDamage(Target, 8, DoTMax)
        SpellHeal("Heal", HealMin, HealMax, Caster, 2, 1)
end