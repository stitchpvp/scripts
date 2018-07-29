function cast(Caster, Target, Mitigation)
  AddSpellBonus(Caster, 678, Mitigation)
  AddSpellBonus(Caster, 201, Mitigation)
  AddSpellBonus(Caster, 202, Mitigation)
  AddSpellBonus(Caster, 203, Mitigation)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
end