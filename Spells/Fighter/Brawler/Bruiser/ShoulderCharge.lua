function cast(Caster, Target, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  SetPosition(Caster, GetX(Target), GetY(Target), GetZ(Target))
  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
  Interrupt(Caster, Target)
end