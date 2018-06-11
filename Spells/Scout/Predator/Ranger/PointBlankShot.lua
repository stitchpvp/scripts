function cast(Caster, Target, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
  AddControlEffect(Target, 4)
  Knockback(Caster, Target, -15, 12.5)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 4)
end
