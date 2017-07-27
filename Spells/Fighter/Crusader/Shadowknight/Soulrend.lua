function cast(Caster, Target, MinDmg, MaxDmg)
        SpellDamage(Target, 2, MinDmg)
        Knockback(Caster, Target, 1500, -10, 10, 0)
        AddControlEffect(Target, 4)
        BlurVision(Target, 1.0)
        AddSpellTimer(1500, "RemoveStunBlur")
end

function RemoveStunBlur(Caster, Target)
    RemoveControlEffect(Target, 4)
    BlurVision(Target, 0)    
end