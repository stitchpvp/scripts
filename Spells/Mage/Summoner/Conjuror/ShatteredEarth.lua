function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 5, MinDmg, MaxDmg)
  AddControlEffect(Target, 3)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 5, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 3)
end