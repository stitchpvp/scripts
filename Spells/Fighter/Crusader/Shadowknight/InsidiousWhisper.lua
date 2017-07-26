function cast(Caster, Target, MinTaunt, MaxTaunt, MinTauntTick, MaxTauntTick, MinDmg, MaxDmg, MinDoT, MaxDoT)
    hateAmount = math.random(MinTaunt, MaxTaunt)
    AddHate(Caster, Target, hateAmount)
    dmgAmount = math.random(MinDmg, MaxDmg)
    SpellDamage(Target, 8, dmgAmount)
end

function tick(Caster, Target, MinTaunt, MaxTaunt, MinTauntTick, MaxTauntTick, MinDmg, MaxDmg, MinDoT, MaxDoT)

   hateAmount = math.random(MinTauntTick, MaxTauntTick)
   AddHate(Caster, Target, hateAmount)
   dmgAmount = math.random(MinDoT, MaxDoT)
   SpellDamage(Target, 8, dmgAmount)
end