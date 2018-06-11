function cast(Caster, Target, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  CastSpell(Caster, 143527919, 1)
end
