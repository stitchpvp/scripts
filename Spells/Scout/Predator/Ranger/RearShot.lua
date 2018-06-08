function cast(Caster, Target, SpellID, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
end

function remove(Caster, Target, SpellID)
  CastSpell(Target, SpellID, 1, Caster)
end
