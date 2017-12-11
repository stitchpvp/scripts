function cast(Caster, Target, Mitigation)
  AddSpellBonus(Target, 204, Mitigation)
  Interrupt(Caster, Target)
end
