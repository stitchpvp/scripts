function cast(Caster, Target, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg, TickMinDmg, TickMaxDmg)
  SpellDamage(Target, 3, TickMinDmg, TickMaxDmg)
end