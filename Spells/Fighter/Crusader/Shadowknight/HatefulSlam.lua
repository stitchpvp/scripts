function cast(Caster, Target,MinDmg, MaxDmg, HateAmt, TickHateAmt)
        SpellDamage(Target, 1, MinDmg, MaxDmg)
        AddHate(Caster, Target, HateAmt, 1)
         CastSpell(caster, 1001532, SpellTier)
end

function tick(Caster, Target, MinDmg, MaxDmg, HateAmt, TickHateAmt)
        AddHate(Caster, Target, TickHateAmt, 1)
end
