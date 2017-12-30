function cast(Caster, Target, MinDmg, MaxDmg, DoTDmg)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg, DoTDmg)
  ProcDamage(Caster, Target, "Bloody Reminder", 2, DoTDmg)
end