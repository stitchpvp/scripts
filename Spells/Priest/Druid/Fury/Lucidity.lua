function cast(Caster, Target, MaxHealth, Int)
  AddSpellBonus(Target, 500, MaxHealth)
  AddSpellBonus(Target, 4, Int)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end