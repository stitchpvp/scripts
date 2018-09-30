function cast(Caster, Target, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  SetPosition(Caster, GetX(Target) + 1, GetY(Target), GetZ(Target) + 1)
  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
  Interrupt(Caster, Target)
end