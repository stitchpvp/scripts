function cast(Caster, Target, MinDmg, MaxDmg, ResistDebuff)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
  AddSpellBonus(Target, 201, ResistDebuff)
  AddSpellBonus(Target, 202, ResistDebuff)
  AddSpellBonus(Target, 203, ResistDebuff)
end
