function cast(Caster, Target, Percentage, Mitigation)
  local hp_perc = GetMaxHP(Target) * Percentage
  AddSpellBonus(Target, 200, Mitigation)
  SpellHeal(Target, "Heal", hp_perc, hp_perc, 2, 1)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end