function cast(Caster, Target, Health, Mitigation)
  if GetArchetypeName(Target) == "Fighter" then
    AddSpellBonus(Target, 500, Health)
  else
    AddSpellBonus(Target, 204, Mitigation)
  end
end