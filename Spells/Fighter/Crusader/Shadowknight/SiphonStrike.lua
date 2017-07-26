function cast(Caster, Target, MinDmg, MaxDmg,  MinDmg2, MaxDmg2, HealMin, HealMax)
  SpellDamage(Target, 8, MinDmg, MaxDmg)
    if LastSpellAttackHit() then
        SpellDamage(Target, 8, MinDmg2, MaxDmg2)
        SpellHeal("Heal", HealMin, HealMax, Caster, 2, 1)
    end
end