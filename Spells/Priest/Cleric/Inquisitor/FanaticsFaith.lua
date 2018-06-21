function cast(Caster, Target, MaxHealth, Arcane)
  AddSpellBonus(Target, 500, MaxHealth)
  AddSpellBonus(Target, 203, Arcane)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end