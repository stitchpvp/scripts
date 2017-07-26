function cast(Caster, Target, MinDmg, MaxDmg, HealMin, HealMax)
        SpellDamage(Target, 0, MinDmg, MaxDmg)
        SpellHeal("Heal", HealMin, HealMax, Caster, 2, 1)
end