function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 1, MinDmg, MaxDmg)
  AddControlEffect(Target, 4)
  BlurVision(Target, 10.0)
  Knockback(Caster, Target, -20, 10)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 4)
  BlurVision(Target, 0.0)
end