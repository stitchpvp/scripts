function cast(Caster, Target,MinDmg, MaxDmg, HateAmt, TickHateAmt)
        SpellDamage(Target, 1, MinDmg, MaxDmg)
        AddHate(Caster, Target, HateAmt, 1)
        CastSpell(caster, 1001532, SpellTier)
        if IsPlayer(Target) then
        SetTarget(Target, Caster)
        end
end

function tick(Caster, Target, MinDmg, MaxDmg, HateAmt, TickHateAmt)
        AddHate(Caster, Target, TickHateAmt, 1)
        if IsPlayer(Target) then
        SetTarget(Target, Caster)
        end
end
