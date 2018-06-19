function cast(Caster, Target, Mitigation)
  AddSpellBonus(Target, 201, Mitigation)
  AddSpellBonus(Target, 203, Mitigation)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end