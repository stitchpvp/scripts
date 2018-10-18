function cast(Caster, Target, Mitigation, Percentage)
  local hp_perc = GetMaxHP(Target) * Percentage
  AddSpellBonus(Target, 201, Mitigation)
  AddSpellBonus(Target, 202, Mitigation)
  AddSpellBonus(Target, 203, Mitigation)
  SpellHeal(Target, "Heal", hp_perc, hp_perc, 2, 1)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end