function cast(Caster, Target, MinDmg, MaxDmg, HealMin, HealMax)
        SpellDamage(Target, 8, MinDmg, MaxDmg)
        SpellHeal("Heal", HealMin, HealMax)
        
end