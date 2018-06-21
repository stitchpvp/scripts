function cast(Caster, Target, Max Health, Mitigation)
  AddSpellBonus(Target, 500, Health)
  AddSpellBonus(Target, 204, Mitigation)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end