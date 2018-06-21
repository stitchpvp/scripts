function cast(Caster, Target, MaxHealth, Mitigation)
  AddSpellBonus(Target, 500, MaxHealth)
  AddSpellBonus(Target, 204, Mitigation)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end