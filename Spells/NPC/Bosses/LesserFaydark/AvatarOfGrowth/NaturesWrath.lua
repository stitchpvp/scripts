function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 9, MinDmg, MaxDmg)
  AddControlEffect(Target, 4)
  Knockback(Caster, Target, -80, 50)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 4)
end
