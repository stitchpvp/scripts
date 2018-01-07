function cast(Caster, Target, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg, DoTDmg)
  ProcDamage(Caster, Target, "Gushing Wound", 2, DoTDmg)
end

function remove(Caster, Target, MinDmg, MaxDmg, DoTDmg, MinTermDmg, MaxTermDmg)
  ProcDamage(Caster, Target, "Untreated Bleeding", 2, DoTDmg)
end