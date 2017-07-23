function cast(Caster, Target, dmgType, dmg, power)
    SpellDamage(Target, 305, dmg)
    SpellHeal("Power", power)
end

function tick(Caster, Target, dmgType, dmg, power)
    SpellDamage(Target, 305, dmg)
    SpellHeal("Power", power)
end