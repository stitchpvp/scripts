function cast(Caster, Target, MinDmg, MaxDmg)
  AddControlEffect(Caster, 3)
  AddControlEffect(Caster, 5)
  SpellDamage(Target, 3, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 3, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveControlEffect(Caster, 3)
  RemoveControlEffect(Caster, 5)
end