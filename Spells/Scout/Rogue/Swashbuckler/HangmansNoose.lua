function cast(Caster, Target, SpellID, ArcaneDebuff)
  AddSpellBonus(Target, 203, ArcaneDebuff)
  CastSpell(Target, SpellID, 1, Caster)
end
