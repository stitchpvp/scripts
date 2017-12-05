function cast(caster, target, MinDmg, MaxDmg, MinTick, MaxTick)
  ProcDamage(caster, target, "Tseralith's Curse", 8, MinDmg, MaxDmg, 0, "You hit %t with Tseralith's Curse")
end

function tick(caster, target, MinDmg, MaxDmg, MinTick, MaxTick)
  SpellDamage(target, 8, MinTick, MaxTick)
end
