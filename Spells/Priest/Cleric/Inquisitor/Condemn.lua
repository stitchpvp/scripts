function cast(Caster, Target, Mitigation)
  AddSpellBonus(Target, 200, Mitigation)
  AddSpellBonus(Target, 201, Mitigation)
  AddSpellBonus(Target, 202, Mitigation)
  AddSpellBonus(Target, 203, Mitigation)
  AddSpellBonus(Target, 204, Mitigation)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end