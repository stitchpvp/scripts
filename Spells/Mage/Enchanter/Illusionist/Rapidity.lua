function cast(Caster, Target, Haste)
  AddSpellBonus(Target, 617, Haste)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end