function cast(caster, target, MinDmg, MaxDmg, MinTick, MaxTick)
  ProcDamage(caster, target, "Tseralith's Curse", 8, MinDmg, MaxDmg, 0, "You hit %t with Tseralith's Curse")
end

function tick(caster, target, MinDmg, MaxDmg, MinTick, MaxTick)
   dmgAmount = math.random(MinTick, MaxTick)
   SpellDamage(Target, 8, dmgAmount)
end
