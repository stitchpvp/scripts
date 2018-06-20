function cast(Caster, Target, Mitigation)
  AddSpellBonus(Target, 202, Mitigation)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end