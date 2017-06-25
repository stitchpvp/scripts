function cast(Caster, Target, MinDmg, MaxDmg)
  AddControlEffect(Target, 4)
  Knockback(Caster, Target, 4000, -15, 10, 0)
  SpellDamage(Target, 1, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 4)
end