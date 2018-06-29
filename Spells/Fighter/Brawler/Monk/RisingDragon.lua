function cast(Caster, Target, MinDmg, MaxDmg, MinTick, MaxTick)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg, MinTick, MaxTick)
  SpellDamage(Target, 3, MinTick, MaxTick)
end