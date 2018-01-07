function cast(Caster, Target, Debuff, Buff, MaxHP, ResistAmt)
  AddSpellBonus(Target, 4, Debuff)
  AddSpellBonus(Caster, 4, Buff)
  AddSpellBonus(Caster, 1, Buff)
  AddSpellBonus(Target 607, MaxHP)
  AddSpellBonus(Caster, 201, ResistAmt)
  AddSpellBonus(Caster, 202, ResistAmt)
  AddSpellBonus(Caster, 203, ResistAmt)
end