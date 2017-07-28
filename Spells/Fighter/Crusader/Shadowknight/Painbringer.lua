function cast(Caster, Target, MinDmg, MaxDmg, DoTMax, HealMin, HealMax)
        SpellDamage(Target, 0, MinDmg, MaxDmg)
        SpellHeal("Heal", HealMin, HealMax)
end

function tick(Caster, Target, MinDmg, MaxDmg, DoTMax, HealMin, HealMax)
        SpellDamage(Target, 8, DoTMax)
        SpellHeal("Heal", HealMin, HealMax)
end