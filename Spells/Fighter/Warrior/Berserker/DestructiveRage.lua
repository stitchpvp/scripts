function cast(Caster, Target, DpsAmount)
  AddSpellBonus(Target, 629, DpsAmount)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end