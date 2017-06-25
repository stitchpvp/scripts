function cast(Caster, Target, DpsAmount)
  AddSpellBonus(Target, 624, DpsAmount)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end