function cast(Caster, Target, Sta, Str, Mitigation)
  AddSpellBonus(Caster, 1, Sta)
  AddSpellBonus(Caster, 0, Str)
  AddSpellBonus(Caster, 201, Mitigation)
  AddSpellBonus(Caster, 202, Mitigation)
  AddSpellBonus(Caster, 203, Mitigation)
end