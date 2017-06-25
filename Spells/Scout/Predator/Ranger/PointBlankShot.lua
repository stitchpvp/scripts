function cast(Caster, Target)
  SpellDamage(Target, 2, 405, 675)
  AddControlEffect(Target, 4)
  -- -15 15 for Guardian bash
  Knockback(Caster, Target, 4000, -15, 12.5)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 4)
end
