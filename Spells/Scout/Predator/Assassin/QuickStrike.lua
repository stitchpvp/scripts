function cast(Caster, Target, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg, DoTDmg)
  ProcDamage(Caster, Target, "Quick Strike", 0, DoTDmg)
end