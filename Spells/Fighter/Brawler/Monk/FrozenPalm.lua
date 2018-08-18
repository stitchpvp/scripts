function cast(Caster, Target, MinDmg, MaxDmg, CastDebuff, HasteDebuff)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
  AddSpellBonus(Target, 664, CastDebuff)
  AddSpellBonus(Target, 617, HasteDebuff)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end