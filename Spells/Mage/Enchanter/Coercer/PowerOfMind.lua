function cast(Caster, Target, MaxPower, ResistAmt)
  AddSpellBonus(Target, 501, MaxPower)
  AddSpellBonus(Caster, 203, ResistAmt)
end