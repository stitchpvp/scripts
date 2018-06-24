function cast(Caster, Target, MinDmg, MaxDmg)
  local DamageType = GetWeaponDamageType(Caster)

  for i = 1, 4 do
  SpellDamage(Target, DamageType, MinDmg, MaxDmg)

  if not LastSpellAttackHit() then
    break
  end
 end
end