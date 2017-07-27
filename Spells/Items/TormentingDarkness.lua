function cast(caster, target, MinDmg, MaxDmg, Slow)
  ProcDamage(caster, target, "Tormenting Darkness", 8, MinDmg, MaxDmg, 0, "You hit %t with Tormenting Darkness")
  AddControlEffect(Target, 5)
  AddProc(Target, 2, 5)
end

function proc(Caster, Target)
  RemoveControlEffect(Target, 5)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 5)
  RemoveProc(Target)
end

function tick(caster, target, MinDmg, MaxDmg)
   dmgAmount = math.random(MinDmg, MaxDmg)
   SpellDamage(Target, 8, dmgAmount)
end
