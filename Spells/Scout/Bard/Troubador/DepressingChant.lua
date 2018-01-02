function cast(Caster, Target, SpellID, ArcaneDebuff)
  CastSpell(Target, SpellID, 1, Caster)
  AddSpellBonus(Target, 203, ArcaneDebuff)
end