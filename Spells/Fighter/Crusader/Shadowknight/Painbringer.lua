function cast(Caster, Target, MinDmg, MaxDmg, DoTMax, HealMin, HealMax)
        SpellDamage(Target, 0, MinDmg, MaxDmg)
        SpellHeal("Heal", HealMin, HealMax)
end

function tick(Caster, Target, MinDmg, MaxDmg, DoTMax, HealMin, HealMax)
        SpellDamage(Target, 8, DoTMax)
        SpellHeal(Caster, "Heal", HealMin, HealMax)
end