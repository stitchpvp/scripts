function cast(Caster, Target, MinDmg1, MaxDmg1, MinDmg2, MaxDmg2, DotAmt)
    SpellDamage(Target, 8, MinDmg1, MaxDmg1)
    
    if LastSpellAttackHit() then
        SpellDamage(Target, 8, MinDmg2, MaxDmg2)
    end
    if LastSpellAttackHit() then
        SpellDamage(Target, 8, DotAmt)
    end
end

function tick(Caster, Target, MinDmg1, MaxDmg1, MinDmg2, MaxDmg2, DotAmt)
    if LastSpellAttackHit() then
        SpellDamage(Target, 8, DotAmt)
    end
end

function remove(Caster, Target)
end