function cast(Caster, Target, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)
  local health_check = GetHP(Caster) / GetMaxHP(Caster)
  
  local dmg_increase = 1 - (GetHP(Caster) / GetMaxHP(Caster))
  local adj_min = MinDmg + (MinDmg * dmg_increase)
  local adj_max = MaxDmg + (MaxDmg * dmg_increase)

  if health_check <= 0.30 then
    SpellDamage(Target, DamageType, adj_min, adj_max)
  else
    SpellDamage(Target, DamageType, MinDmg, MaxDmg)
  end
end