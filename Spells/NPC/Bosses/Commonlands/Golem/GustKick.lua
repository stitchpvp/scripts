function cast(Caster, Target)
  local dmg = GetMaxHP(Target) * 0.4

  AddControlEffect(Target, 5)

  Knockback(Caster, Target, -30, 25)

  SpellDamage(Target, 1, dmg, dmg, 0, 1)

  ClearHate(Caster, Target)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 5)
end
