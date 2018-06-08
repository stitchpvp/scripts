function cast(Caster, Target, MinDmg, MaxDmg)
  AddControlEffect(Target, 5)

  Knockback(Caster, Target, -30, 25)

  SpellDamage(Target, 1, MinDmg, MaxDmg)

  ClearHate(Caster, Target)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 5)
end
