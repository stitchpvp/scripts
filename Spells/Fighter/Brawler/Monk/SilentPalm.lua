function cast(Caster, Target, MinDmg, MaxDmg)
  AddControlEffect(Target, 2)

  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 2)
end
