function cast(Caster, Target)
  Knockback(Caster, Target, -30, 15)

  SpellDamage(Target, 1, GetMaxHP(Target) * 0.33)

  AddControlEffect(Target, 4)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 4)
end
