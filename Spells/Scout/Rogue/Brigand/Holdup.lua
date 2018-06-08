function cast(Caster, Target, SpellID, EleDebuff)
  AddSpellBonus(Target, 201, EleDebuff)
  CastSpell(Target, SpellID, 1, Caster)
end
