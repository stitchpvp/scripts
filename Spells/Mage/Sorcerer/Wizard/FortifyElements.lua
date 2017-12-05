function cast(Caster, Target, Power, Mitigation)
  AddSpellBonus(Target, 501, Power)
  AddSpellBonus(Target, 201, Mitigation)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
