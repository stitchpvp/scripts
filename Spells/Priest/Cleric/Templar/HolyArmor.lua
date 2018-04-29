function cast(Caster, Target, STA, Mitigation)
  if GetArchetypeName(Target) == "Fighter" then
    AddSpellBonus(Target, 1, STA)
  else
    AddSpellBonus(Target, 204, Mitigation)
  end
end
