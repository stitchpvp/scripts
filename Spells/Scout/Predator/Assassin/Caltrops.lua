function cast(Caster, Target, SpellID, NoxDebuff)
  AddSpellBonus(Target, 202, EleDebuff)
  CastSpell(Target, SpellID, 1, Caster)
end